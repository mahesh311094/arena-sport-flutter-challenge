import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sport_app/utilities/constants.dart';

class Previous extends StatelessWidget {
  const Previous({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Text(
            'partidos previos'.toUpperCase(),
            style: kCardSubTitleStyle,
          ),
          SizedBox(height: 15),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 4,
            shrinkWrap: true,
            childAspectRatio: 6,
            children: [
              ItemPrevious(title: 'G', color: Colors.blue),
              ItemPrevious(title: 'G', color: Colors.blue),
              ItemPrevious(title: 'E', color: Colors.grey),
              ItemPrevious(title: 'E', color: Colors.grey),
              ItemPrevious(title: 'P', color: Colors.black),
              ItemPrevious(title: 'P', color: Colors.black),
              ItemPrevious(title: 'G', color: Colors.blue),
              ItemPrevious(title: 'G', color: Colors.blue),
              ItemPrevious(title: 'E', color: Colors.grey),
              ItemPrevious(title: 'E', color: Colors.grey),
            ],
          ),
          Divider(
            thickness: 2,
            height: 25,
          ),
          Goals(),
        ],
      ),
    );
  }
}

class ItemPrevious extends StatelessWidget {
  final String title;
  final Color color;

  const ItemPrevious({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                title,
                style: kWhiteTitleStyle,
              ),
            ),
          ),
          SizedBox(width: 8),
          Text(
            'vs Team Name 0:0',
            style: kStatsSubTitleStyle,
          ),
        ],
      ),
    );
  }
}

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'promedio de goles'.toUpperCase(),
            style: kCardSubTitleStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_progress(false), _progress(true)],
          ),
          Divider(
            thickness: 2,
            height: 25,
          ),
          Goleadores(),
        ],
      ),
    );
  }

  Widget _progress(bool isReverse) {
    return CircularPercentIndicator(
      radius: 70.0,
      lineWidth: 6.0,
      percent: 0.75,
      reverse: isReverse,
      center: Text("2,1"),
      progressColor: Colors.lightBlue,
    );
  }
}

class Goleadores extends StatelessWidget {
  const Goleadores({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      child: Column(
        children: [
          Text(
            'Goleadores'.toUpperCase(),
            style: kCardSubTitleStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _player('11',
                  'https://cdn.images.express.co.uk/img/dynamic/67/590x/Lionel-Messi-897984.jpg'),
              _player('9',
                  'https://cdn.images.express.co.uk/img/dynamic/67/590x/Lionel-Messi-897984.jpg'),
            ],
          )
        ],
      ),
    );
  }

  Widget _player(String goal, String url) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: 25,
          ),
          SizedBox(height: 10),
          Text(
            'Player Name',
            style: kStatsSubTitleStyle,
          ),
          SizedBox(height: 10),
          Text(
            goal,
            style: kStatsSubTitleStyle,
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
