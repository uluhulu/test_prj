import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/paths.dart';

class CloseButtonScreen1 extends StatelessWidget {

  const CloseButtonScreen1({Key key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: GestureDetector(
        onTap:() => Navigator.of(context).pop(),
        child: Image.asset(
          closeIconPath,
          width: 48,
        ),
      ),
    );
  }
}
