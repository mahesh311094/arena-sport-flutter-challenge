import 'package:flutter/material.dart';
import 'package:sport_app/views/comparison.dart';
import 'package:sport_app/views/goals.dart';
import 'package:sport_app/views/stats_list.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 10),
          StatsList(),
          SizedBox(height: 10),
          Comparison(),
          SizedBox(height: 10),
          Previous(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
