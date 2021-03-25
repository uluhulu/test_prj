import 'package:flutter/material.dart';
import 'package:test_prj/constant/styles.dart';

class ListTitle extends StatelessWidget {
  final String text;

  // ignore: sort_constructors_first
  const ListTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: bold24Style,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
