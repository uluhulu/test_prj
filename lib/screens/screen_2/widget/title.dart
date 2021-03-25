import 'package:flutter/material.dart';
import 'package:test_prj/constant/styles.dart';

class ListTitle extends StatelessWidget{
  final String text;

  const ListTitle({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        style: bold24Style,
      ),
    );
  }

}