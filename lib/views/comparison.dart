import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/utilities/constants.dart';

class Comparison extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://media.api-sports.io/football/teams/4012.png',
                height: 40,
                width: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Position in League'.toUpperCase(),
                    style: kCardSubTitleStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('3'), Text('7')],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Encuentros Previos'.toUpperCase(),
                    style: kCardSubTitleStyle,
                  ),
                ],
              ),
              Image.network(
                'https://media.api-sports.io/football/teams/46.png',
                height: 40,
                width: 40,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[400],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '25',
                          style: kSubTitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        'Victorias',
                        style: kWhiteTitleStyle,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '13 Empates',
                style: kStatsSubTitleStyle,
              ),
              Stack(
                children: <Widget>[
                  // Max Size
                  Container(
                    height: 30.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[400],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '25',
                          textAlign: TextAlign.end,
                          style: kSubTitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        'Victorias',
                        style: kWhiteTitleStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
