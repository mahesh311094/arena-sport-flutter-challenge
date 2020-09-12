import 'package:flutter/material.dart';
import 'package:sport_app/utilities/constants.dart';

class Partidos extends StatelessWidget {
  const Partidos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "UEFA Champions League",
            style: kCardGrayTitleStyle,
          ),
          SizedBox(height: 16),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              height: 20,
              thickness: 1,
            ),
            itemBuilder: (context, index) {
              bool isNotify = index == 0;
              return ItemPartidos(
                isNotify: isNotify,
              );
            },
            itemCount: 3,
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}

class ItemPartidos extends StatelessWidget {
  final bool isNotify;

  const ItemPartidos({Key key, this.isNotify}) : super(key: key);

  Widget getScore(String score) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      color: Colors.grey[200],
      child: Text(
        score,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Image.network(
                    "https://media.api-sports.io/football/teams/4012.png",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 6),
                  Text('Barcelona', style: kSubTitleTextStyle),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(children: [
                getScore('1'),
                SizedBox(width: 6),
                Text('Terminado', style: kCardSubTitleGreenStyle),
                Expanded(child: Container()),
                isNotify
                    ? Icon(Icons.notifications_none,
                        size: 24, color: Colors.grey)
                    : SizedBox(width: 24),
              ]),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Image.network(
                    "https://media.api-sports.io/football/teams/46.png",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 6),
                  Text('Bayern Munich', style: kSubTitleTextStyle),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(children: [
                getScore('2'),
                SizedBox(width: 6),
                Text('ESPN', style: kCardSubTitleStyle),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
