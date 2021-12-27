import 'package:flutter/material.dart';
import 'package:nyc_experiments/app-level/helpers/constants.dart';
import 'package:nyc_experiments/app-level/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Begin....

    return MaterialApp(
      initialRoute: homeRoute,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
        fontFamily: 'monsterrat',
      ),
    );
  }
}
