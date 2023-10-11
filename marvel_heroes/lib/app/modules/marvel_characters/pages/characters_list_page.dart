import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/components/character_card.dart';
import 'package:marvel_heroes/app/core/components/snack_bar_dialog.dart';
import 'package:marvel_heroes/app/core/consts/exception_consts.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/cubit/marvel_cubit.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/cubit/marvel_state.dart';
import '../../../core/consts/app_consts.dart';

class CharactersListPage extends StatefulWidget {
  const CharactersListPage({Key? key}) : super(key: key);
  static const String ROUTE = "/";

  @override
  State<CharactersListPage> createState() => _CharactersListPageState();
}

class _CharactersListPageState extends State<CharactersListPage> {
  final ScrollController _scrollController = ScrollController();
  bool getMoreCharacters = false;
  int currentOffset = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConsts.MARVEL_COLOR,
        toolbarHeight: 100.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(
              "assets/marvel.svg",
              fit: BoxFit.contain,
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * .06,
            ),
            const Text(
              " HEROES",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return BlocProvider(
      create: (context) => Modular.get<MarvelCubit>()..getCharacters(),
      child: BlocConsumer<MarvelCubit, MarvelState>(
        listener: (context, state) async {
          if (state.exception != null) {
            state.exception!.when(serverError: (error) {
              if (error.isNotEmpty &&
                  error == ExceptionConsts.getCharactersErrorMessage) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  padding: const EdgeInsets.all(4.0),
                  content: MarvelSnackBarDialog(message: error),
                  backgroundColor: Colors.transparent,
                ));
              }
            });
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppConsts.MARVEL_COLOR),
            );
          }

          if (state.characters == null) {
            return Container();
          }

          if (state.characters!.data!.characters!.isEmpty) {
            return const Center(
              child: Text("Error getting the characters, try again later."),
            );
          }

          onScrollEndListener(context, state);
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    controller: _scrollController,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 8.0),
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.characters!.data!.characters!.length,
                    itemBuilder: (context, index) {
                      return MarvelCharacterCard(
                        character: state.characters!.data!.characters![index],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> onScrollEndListener(
      BuildContext context, MarvelState state) async {
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (getMoreCharacters == false) {
          setState(() {
            getMoreCharacters = true;
          });

          int offset = currentOffset + 42;
          await ReadContext(context)
              .read<MarvelCubit>()
              .getMoreCharacters(offset, state.characters!.data!.characters!);

          setState(() {
            getMoreCharacters = false;
            currentOffset = offset;
          });
        }
      }
    });
  }
}
