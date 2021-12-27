import 'package:flutter/material.dart';
import 'package:nyc_experiments/provider/model/app_data.dart';
import 'package:nyc_experiments/provider/widgets/content.dart';
import 'package:provider/provider.dart';

class ExperimentWithProvider extends StatelessWidget {
  /// ----------------------------------------------------------
  ///ExperimentWithProvider.....
  /// ----------------------------------------------------------
  ExperimentWithProvider({
    this.data,
  });

  ///Navigation data...
  final String data;

  @override
  Widget build(BuildContext context) {
    //Begin...

    return Scaffold(
      appBar: AppBar(
        title: Text('$data'),
      ),
      body: ChangeNotifierProvider<AppData>(
        builder: (context) => AppData(),
        child: WondersBody(),
      ),
    );
  }
}
