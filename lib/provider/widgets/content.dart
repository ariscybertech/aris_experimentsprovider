import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nyc_experiments/provider/helpers/constants.dart';
import 'package:nyc_experiments/provider/helpers/utilities.dart';
import 'package:nyc_experiments/provider/model/app_data.dart';
import 'package:nyc_experiments/provider/model/location.dart';
import 'package:nyc_experiments/provider/model/wonder-options.dart';
import 'package:nyc_experiments/provider/widgets/location-stream-provider.dart';
import 'package:nyc_experiments/provider/widgets/summary.dart';
import 'package:nyc_experiments/provider/widgets/wonder-names.dart';
import 'package:provider/provider.dart';

class WondersBody extends StatelessWidget {
  /// ----------------------------------------------------------
  ///Whole Wonders Body.....
  /// ----------------------------------------------------------
  const WondersBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Begin...
    final _wonderToShow = Provider.of<AppData>(context);

    final _currentWonder = ValueNotifier(_wonderToShow.wonder);

    return Column(
      children: [
        // Flexible(
        //   flex: 2,
        //   child: StreamProvider(
        //     initialData: LocationModelNormal.initialData(),
        //     builder: (context) =>
        //         locationStreamInstance.specificLocation(_wonderToShow.wonder),
        //     child: LocationStreamProviderWidget(),
        //   ),
        // ),
        Flexible(
          flex: 6,
          child: StreamProvider<LocationModelNormal>.value(
            initialData: LocationModelNormal.initialData(),
            value:
                locationStreamInstance.specificLocation(_wonderToShow.wonder),
            child: LocationStreamProviderWidget(),
          ),
        ),
        Flexible(
          flex: 2,
          child: Provider<WonderOptions>.value(
            value: WonderOptions(),
            child: WonderNames(),
          ),
        ),
        Flexible(
          // flex: 2,
          child: ValueListenableProvider<String>.value(
            value: _currentWonder,
            child: Consumer<String>(
              builder: (context, value, _) => Text(
                '$k_wonderSelected $value',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
        const Divider(),
        Flexible(
          // flex: 8,
          child: MultiProvider(
            providers: [
              Provider<WonderOptions>.value(value: WonderOptions()),
              StreamProvider<LocationModelNormal>.value(
                initialData: LocationModelNormal.initialData(),
                value: locationStreamInstance
                    .specificLocation(_wonderToShow.wonder),
              ),
            ],
            child: SummaryWidget(),
          ),
        ),
      ],
    );
  }
}
