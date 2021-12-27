import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nyc_experiments/provider/model/location.dart';
import 'package:provider/provider.dart';

class LocationStreamProviderWidget extends StatelessWidget {
  /// ----------------------------------------------------------
  ///Location Stream Widget.....
  /// ----------------------------------------------------------
  const LocationStreamProviderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Begin...
    final _advancedWonder = Provider.of<LocationModelNormal>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${_advancedWonder.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Expanded(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: _advancedWonder.url,
              placeholder: (context, url) => const FlutterLogo(
                style: FlutterLogoStyle.horizontal,
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }
}
