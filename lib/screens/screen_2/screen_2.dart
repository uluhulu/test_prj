import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/screens/screen_2/widget/title.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CloseButton(),
              ListTitle(text: 'Section 1 (2)',)
            ],
          ),
        ),
      );
}
