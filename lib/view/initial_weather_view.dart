import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

class InitialWeatherView extends StatelessWidget {
  const InitialWeatherView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: 32,
          ),
          Text(
            AppStrings.searchLocationMessage,
            style: ErrorTextStyle(),
          ),
        ],
      ),
    );
  }
}
