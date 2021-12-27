import 'package:flutter/material.dart';
import 'package:nyc_experiments/app-level/helpers/constants.dart';
import 'package:nyc_experiments/app-level/screens/home.dart';
import 'package:nyc_experiments/provider/main.dart';

class Router {
  /// ----------------------------------------------------------
  ///Creates the Routes Options for the app....
  /// ----------------------------------------------------------
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Begin...

    switch (settings.name) {
      //Begin...

      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());

      case providerRoute:
        final _data = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => ExperimentWithProvider(
                  data: _data,
                ));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
