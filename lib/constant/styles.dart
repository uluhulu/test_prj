import 'package:flutter/material.dart';

import 'colors.dart';

final normalStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
);

final boldStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.bold,
);

final bold24Style = boldStyle.copyWith(
  fontSize: 24,
);

final normal14Style = normalStyle.copyWith(
  fontSize: 14,
);
final bold14StyleWhite = boldStyle.copyWith(
  fontSize: 14,
  color: ProjectColor.white,
);
