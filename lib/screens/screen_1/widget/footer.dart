import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_prj/constant/styles.dart';

import '../../../constant/colors.dart';

class DialogFooter extends StatelessWidget {
  const DialogFooter({Key key, this.buttonText}) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: CupertinoButton(
        onPressed: () {},
        child: Container(
          height: 44,
          width: 140,
          decoration: const BoxDecoration(
            color: ProjectColor.purple,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: bold14StyleWhite,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
