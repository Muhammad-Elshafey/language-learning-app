import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toko_app/models/phrase.dart';
import 'package:toko_app/screens/numbers_page.dart';
import '../components/item.dart';

class ListItem extends StatelessWidget {
  const ListItem
      (
      {
        Key? key, required this.number, required this.color
      }
      ) : super(key: key);

  final Item number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      child: Row(
        children:
        [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(
              number.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  number.jpName,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: ()
                {
                  AssetsAudioPlayer.newPlayer().open(
                    Audio(number.sound),
                    showNotification: true,
                  );
                },
                icon: Icon(Icons.play_arrow),
                color: Colors.white,
               iconSize: 30,
            ),
            // Icon(
            //   Icons.play_arrow,
            //   color: Colors.white,
            //   size: 30.0,
            // ),
          ),
        ],
      ),
    );
  }
}


class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {Key? key,

        required this.color,
        required this.itemType, required this.phrase})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      child: Row(
        children:
        [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  phrase.jpName,
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: ()
              {
                AssetsAudioPlayer.newPlayer().open(
                  Audio(phrase.sound),
                  showNotification: true,
                );
              },
              icon: Icon(Icons.play_arrow),
              color: Colors.white,
              iconSize: 30,
            ),
            // Icon(
            //   Icons.play_arrow,
            //   color: Colors.white,
            //   size: 30.0,
            // ),
          ),
        ],
      ),
    );
  }
}
