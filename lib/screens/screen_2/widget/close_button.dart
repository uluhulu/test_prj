import 'package:flutter/cupertino.dart';

import '../../../constant/paths.dart';

// ignore: use_key_in_widget_constructors
class CloseButtonScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Image.asset(
          closeIconPath,
          width: 48,
        ),
      ),
    );
  }
}
