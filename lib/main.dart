import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/constants/app_strings.dart';
import 'package:weather_app/view/weather_view.dart';
import 'package:weather_app/view_model/weather_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => WeatherViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const WeatherViewPage(),
        },
      ),
    );
  }
}
