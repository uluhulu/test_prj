import 'package:flutter/material.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/constant/styles.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key key, this.listItemTitle, this.width}) : super(key: key);

  final String listItemTitle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 150,
        width: width,
        decoration: BoxDecoration(
          color: ProjectColor.white,
          boxShadow: [
            BoxShadow(
              color: ProjectColor.black.withOpacity(0.25),
              blurRadius: 16,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            listItemTitle,
            style: bold24Style,
          ),
        ),
      ),
    );
  }
}
