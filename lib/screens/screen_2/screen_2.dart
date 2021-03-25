import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/paths.dart';
import 'package:test_prj/screens/screen_2/widget/title.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                closeIconPath,
              width: 48,),
            ),
            ListTitle(text: 'Section 1 (2)',)
          ],
        ),
      );
}
