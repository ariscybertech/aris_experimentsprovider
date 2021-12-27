import 'package:flutter/material.dart';
import 'package:nyc_experiments/provider/helpers/constants.dart';
import 'package:nyc_experiments/provider/model/location.dart';
import 'package:nyc_experiments/provider/model/wonder-options.dart';
import 'package:provider/provider.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Begin...
    final _totalWonders = Provider.of<WonderOptions>(context);

    final _wonderDetail = Provider.of<LocationModelNormal>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$k_totalWonders ${_totalWonders.wonderCount}'),
        Text('$k_wonderName ${_wonderDetail.name}'),
      ],
    );
  }
}
