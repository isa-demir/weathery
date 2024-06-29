import 'package:flutter/material.dart';

class TitleTextStyle extends TextStyle {
  const TitleTextStyle()
      : super(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        );
}

class BodyTextStyle extends TextStyle {
  const BodyTextStyle()
      : super(
          color: Colors.white,
          fontSize: 16,
        );
}

class ErrorTextStyle extends TextStyle {
  const ErrorTextStyle()
      : super(
          color: Colors.white,
          fontSize: 24,
        );
}
