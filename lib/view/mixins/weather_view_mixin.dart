import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/api_params.dart';
import 'package:weather_app/model/apis/app_exception.dart';
import 'package:weather_app/view/weather_view.dart';
import '../../constants/constants.dart';
import '../../model/apis/api_response.dart';
import '../../view_model/weather_view_model.dart';
import '../completed_weather_view.dart';
import '../error_weather_view.dart';
import '../initial_weather_view.dart';

mixin WeatherViewMixin on State<WeatherViewPage> {
  final cityCountryRegex = RegExp(r'^[a-zA-Z\s]{2,}$');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        fetchBaseWeather();
      },
    );
  }

  void fetchBaseWeather() async {
    final controller = Provider.of<WeatherViewModel>(context, listen: false)
        .locationController;

    controller.text = controller.text.trim();

    if (controller.text.isNotEmpty &&
        cityCountryRegex.hasMatch(controller.text)) {
      await Provider.of<WeatherViewModel>(context, listen: false)
          .fetchWeatherData(
        CurrentWeatherParam(
          city: controller.text,
        ),
      );
    } else {
      showDialog();
      controller.clear();
    }
  }

  showDialog() {
    return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        duration: Duration(seconds: 1),
        backgroundColor: AppColors.background,
        content: Text(
          AppStrings.errorSearchText,
          style: BodyTextStyle(),
        )));
  }

  Widget getWeatherWidget(ApiResponse apiResponse) {
    switch (apiResponse.status) {
      case Status.LOADING:
        return const Center(child: CircularProgressIndicator());
      case Status.COMPLETED:
        final provider = Provider.of<WeatherViewModel>(context, listen: false);
        provider.setControllerText();
        return CompletedWeatherView(result: provider.currentWeather!);
      case Status.ERROR:
        return const ErrorWeatherView();
      case Status.INITIAL:
      default:
        return const InitialWeatherView();
    }
  }
}
