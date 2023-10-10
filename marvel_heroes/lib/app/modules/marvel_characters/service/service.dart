import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:marvel_heroes/app/core/consts/api_utils.dart';

abstract class Service {
  static const String HTTP_GET = "HTTP_GET";
  final Client http;

  String serverErrorMessage = "";
  String exceptionMessage = "";

  Map<String, String> headers = HashMap<String, String>();

  Service({required this.http}) {
    buildAuthorizationHeaders();
  }

  Future buildAuthorizationHeaders() async {
    headers[HttpHeaders.contentTypeHeader] = "application/json";
  }

  Future<Response> request(String slug, String method,
      {dynamic body, int timeout = 14, Map<String, dynamic>? newParams}) async {
    Response? response;

    try {
      await buildAuthorizationHeaders();

      switch (method) {
        case HTTP_GET:
          final params = await createParams(newParams);
          final Uri url = Uri.https(ApiUtils.apiEndpoint, slug, params);

          response = await http
              .get(url, headers: headers)
              .timeout(Duration(seconds: timeout));
          break;
      }

      if (response != null) {
        if (response.statusCode == 401) {
          return await request(slug, method, body: body);
        }

        if (response.statusCode >= 400 && response.statusCode <= 510) {
          throw Exception(response.body);
        }
      }

      return response!;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Map<String, dynamic>> createParams(
      Map<String, dynamic>? addParams) async {
    int timeStamp = DateTime
        .now()
        .millisecondsSinceEpoch;
    String hash = md5
        .convert(utf8
        .encode("$timeStamp${ApiUtils.privateKey}${ApiUtils.publicKey}"))
        .toString();

    final params = {
      "apikey": ApiUtils.publicKey,
      "ts": timeStamp,
      "hash": hash,
      "limit": 42
    }.map((key, value) => MapEntry(key, value.toString()));


    if (addParams != null) {
      final newParams = addParams.map((key, value) => MapEntry(key, value.toString()));
      params.addAll(newParams);
    }

    return params;
  }
}
