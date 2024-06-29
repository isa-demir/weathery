import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/view_model/weather_view_model.dart';

class SearchLocationWidget extends StatelessWidget {
  const SearchLocationWidget({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: context.read<WeatherViewModel>().locationController,
      style: const BodyTextStyle(),
      decoration: InputDecoration(
        hintText: AppStrings.enterLocation,
        hintStyle: const BodyTextStyle(),
        filled: true,
        fillColor: AppColors.background,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.primary,
          ),
        ),
        prefixIcon: IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
