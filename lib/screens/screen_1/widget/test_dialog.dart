import 'package:flutter/material.dart';
import 'package:test_prj/constant/text.dart';
import 'package:test_prj/screens/screen_1/widget/footer.dart';
import 'package:test_prj/screens/screen_1/widget/main_text.dart';
import '../../../constant/colors.dart';
import 'title.dart';

class TestDialog extends StatelessWidget {
  const TestDialog({
    Key key,
    this.titleName,
    this.subtitleName,
    this.mainText, this.buttonText,
  }) : super(key: key);

  final String titleName;
  final String subtitleName;
  final String mainText;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ProjectColor.white,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DialogTitle(
                  title: titleName,
                  subtitle: subtitleName,
                ),
                MainText(
                  mainText: mainText,
                ),
                 DialogFooter(buttonText: buttonText,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
