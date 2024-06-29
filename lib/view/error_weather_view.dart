import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

class ErrorWeatherView extends StatelessWidget {
  const ErrorWeatherView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(bottom: 20),
            child: const Icon(
              Icons.error_outline_outlined,
              color: Colors.white,
              size: 64,
            ),
          ),
          const Text(
            AppStrings.tryAgain,
            textAlign: TextAlign.center,
            style: ErrorTextStyle(),
          ),
        ],
      ),
    );
  }
}
