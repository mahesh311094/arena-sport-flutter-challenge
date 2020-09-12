import 'package:flutter/material.dart';
import 'package:sport_app/utilities/constants.dart';

class CardView extends StatelessWidget {
  final Widget child;
  final String title;
  final String subTitle;

  const CardView({
    Key key,
    this.child,
    this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: kCardBlackTitleStyle),
                Text(subTitle, style: kCardSubTitleStyle),
              ],
            ),
            SizedBox(
              height: 20.0,
              width: double.infinity,
              child: Divider(color: Colors.grey.shade400),
            ),
            child
          ],
        ),
      ),
    );
  }
}
