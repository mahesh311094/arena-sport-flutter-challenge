import 'package:flutter/material.dart';
import 'package:sport_app/utilities/constants.dart';

class Comparison extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'https://media.api-sports.io/football/teams/4012.png',
                height: 40,
                width: 40,
              ),
              SizedBox(height: 10),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Position in League'.toUpperCase(),
                style: kCardSubTitleStyle,
              ),
              Container(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('3'), Text('7')],
                ),
              ),
              Text(
                'Encuentros Previos'.toUpperCase(),
                style: kCardSubTitleStyle,
              ),
              Text(
                '13 Empates',
                style: kStatsSubTitleStyle,
              ),
              SizedBox(height: 3),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'https://media.api-sports.io/football/teams/46.png',
                height: 40,
                width: 40,
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
