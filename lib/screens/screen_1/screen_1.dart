import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/strings.dart';
import 'package:test_prj/constant/text.dart';
import 'package:test_prj/screens/screen_1/widget/close_button.dart';
import 'package:test_prj/screens/screen_1/widget/test_dialog.dart';

import '../../app.dart';
import '../../constant/colors.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildShowDialogButton(),
        ],
      ),
    );
  }

  Widget _buildShowDialogButton() {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const TestDialog(
                  titleName: titleText,
                  subtitleName: subtitleText,
                  mainText: mainText,
                  buttonText: buttonText,
                );
              });
        },
        child: const Text('show dialog'),
      ),
    );
  }
}
