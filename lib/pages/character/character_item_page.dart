import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/network/model/character/character.dart';
import 'package:rick_and_morty/pages/character/widgets/arrow_back_tile.dart';
import 'package:rick_and_morty/pages/character/widgets/char_episodes_list_tile.dart';
import 'package:rick_and_morty/pages/character/widgets/circle_avatar.dart';
import 'package:rick_and_morty/pages/widgets/app_bar_widget.dart';

class CharacterItemPage extends StatefulWidget {
  const CharacterItemPage({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;

  @override
  State<CharacterItemPage> createState() => _CharacterItemPageState();
}

class _CharacterItemPageState extends State<CharacterItemPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          // здесь нужно скроллить всю страницу по мере заполняемости контентом
          children: [
            const ArrowBackTile(),
            CircleAvatarWidget(
              image: widget.character.image,
            ),
            Text(
              widget.character.name,
              style: GoogleFonts.roboto(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32, bottom: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                'Informations',
                style: themeData.textTheme.titleMedium,
              ),
            ),
            // Expanded(
            //   // прокручиватся этот список, а не содержимое страницы
            //   child: CharInfoListTile(
            //     character: widget.character,
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.only(top: 52, bottom: 26),
              alignment: Alignment.centerLeft,
              child: Text(
                'Episodes',
                style: themeData.textTheme.titleMedium,
              ),
            ),
            CharEpisodesListTile(episodes: widget.character.episode), // ловлю ошибку
          ],
        ),
      ),
    );
  }
}
