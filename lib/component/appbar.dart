import 'package:flutter/material.dart';
import 'package:sport_app/component/round_background.dart';
import 'package:sport_app/utilities/constants.dart';

class AppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  final bool isLive;

  AppBarCommon({this.isLive});

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        'ARENA',
        style: kAppBarTitleStyle,
      ),
      actions: [
        Row(
          children: [
            Text(
              'Live',
              style: kTitleTextStyle,
            ),
            Switch(
              value: false,
              onChanged: (bool) {},
            ),
            RoundBackground(
              onPressed: () {},
              child: Container(
                child: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        )
      ],
    );
  }
}
