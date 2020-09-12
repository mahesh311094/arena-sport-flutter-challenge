import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sport_app/utilities/constants.dart';

class Noticias extends StatelessWidget {
  const Noticias({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        if (index < 3) {
          return NotificationSimple(
            time: '11.18',
            title:
                'Pirlo confirmo que no contara con Gonzalo Higuain en la Juventus',
          );
        } else if (index == 3) {
          return NotificationBigImg(
            time: '58 min',
            title:
                'Campeones del mundo que tamblen ganaron la champions con bayern',
            img:
                'https://image.shutterstock.com/image-photo/football-soccer-match-children-boys-260nw-515573617.jpg',
          );
        } else {
          return NotificationSmallImg(
            time: '58 min',
            title:
                'Koeman le comunica a Sergio Busquets su continuidad en el Barcelona',
            img:
                'https://image.shutterstock.com/image-photo/football-soccer-match-children-boys-260nw-515573617.jpg',
          );
        }
      },
      itemCount: 6,
      shrinkWrap: true,
      separatorBuilder: (context, index) => Divider(thickness: 1),
      physics: NeverScrollableScrollPhysics(),
    );
  }
}

class NotificationSimple extends StatelessWidget {
  final String time;
  final String title;

  const NotificationSimple({
    Key key,
    this.time,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        time,
        style: kCardSubTitleStyle,
      ),
      title: Text(
        title,
        style: kSubTitleTextStyle,
      ),
    );
  }
}

class NotificationBigImg extends StatelessWidget {
  final String time;
  final String title;
  final String img;

  const NotificationBigImg({
    Key key,
    this.time,
    this.title,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(img),
        SizedBox(height: 6),
        Text(
          title,
          style: kSubTitleTextStyle,
        ),
        SizedBox(height: 10),
        BottomView(time: time),
      ],
    );
  }
}

class NotificationSmallImg extends StatelessWidget {
  final String time;
  final String title;
  final String img;

  const NotificationSmallImg({
    Key key,
    this.time,
    this.title,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          img,
          height: 80,
          fit: BoxFit.fill,
          width: 100,
        ),
        SizedBox(width: 6),
        Expanded(
          child: Column(
            children: [
              Text(
                title,
                style: kSubTitleTextStyle,
              ),
              SizedBox(height: 6),
              BottomView(
                time: time,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class BottomView extends StatelessWidget {
  const BottomView({
    Key key,
    @required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'images/espn.png',
          width: 23,
        ),
        SizedBox(width: 10),
        Text(
          'ESPN',
          style: kSubTitleTextStyle,
        ),
        SizedBox(width: 10),
        Text(
          time,
          style: kCardSubTitleStyle,
        ),
      ],
    );
  }
}
