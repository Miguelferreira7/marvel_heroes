import 'package:flutter/material.dart';

class MarvelSnackBarDialog extends StatelessWidget {
  const MarvelSnackBarDialog({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: MediaQuery.of(context).size.height * 0.1,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 1.3,
            height: 50,
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Text(
              message,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.info_outline, size: 22, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
