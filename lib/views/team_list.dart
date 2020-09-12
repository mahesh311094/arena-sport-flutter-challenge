import 'package:flutter/material.dart';
import 'package:sport_app/utilities/constants.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Image.network(kTeamImages[position]),
          );
        },
        itemCount: kTeamImages.length,
      ),
    );
  }
}
