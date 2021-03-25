import 'package:flutter/material.dart';
import 'package:test_prj/constant/styles.dart';
import 'package:test_prj/screens/screen_1/widget/close_button.dart';

import '../../../constant/colors.dart';

class DialogTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const DialogTitle({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildTitleText(),
        CloseButtonScreen1(),
      ],
    );
  }

  Widget _buildTitleText() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            title,
            style: bold24Style,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            subtitle,
            style: normal14Style,
          ),
        )
      ],
    );
  }
}
