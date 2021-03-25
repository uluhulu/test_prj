import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_prj/constant/styles.dart';

import '../../../../../constant/colors.dart';

class MainText extends StatelessWidget {
  const MainText({Key key, this.mainText}) : super(key: key);

  final String mainText;

  @override
  Widget build(BuildContext context) {
    final _scrollController = ScrollController();
    return Container(
      height: 0,
      constraints: const BoxConstraints(minHeight: 308, maxHeight: 400),
      color: ProjectColor.gainsboro,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: const Alignment(0, 0.9),
            colors: [
              ProjectColor.black.withOpacity(0.1),
              Colors.transparent,
            ],
          ),
        ),
        child: Scrollbar(
          controller: _scrollController,
          isAlwaysShown: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                mainText,
                style: normal14Style,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
