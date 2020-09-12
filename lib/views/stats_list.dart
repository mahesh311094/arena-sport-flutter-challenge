import 'package:flutter/material.dart';
import 'package:sport_app/utilities/constants.dart';

class StatsList extends StatelessWidget {
  const StatsList({
    Key key,
  }) : super(key: key);

  final selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: kStatsList
            .asMap()
            .map((index, labelText) {
              final label = Container(
                alignment: Alignment.center,
                child: Text(
                  labelText,
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.blue : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8),
              );

              return MapEntry(index, label);
            })
            .values
            .toList(),
      ),
    );
  }
}
