import 'package:flutter/material.dart';
import 'package:nyc_experiments/provider/helpers/constants.dart';
import 'package:nyc_experiments/provider/model/app_data.dart';
import 'package:nyc_experiments/provider/model/wonder-options.dart';
import 'package:nyc_experiments/provider/widgets/wonder-chip.dart';
import 'package:provider/provider.dart';

class WonderNames extends StatelessWidget {
  /// ----------------------------------------------------------
  ///Wonder Names Widget.....
  /// ----------------------------------------------------------
  const WonderNames({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Begin...

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              '$whichWonder',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
        Wrap(
          spacing: 0.0, // gap between adjacent chips
          runSpacing: 0.0, // gap between lines
          children: []..addAll(
              _buildList(
                context,
              ),
            ),
        ),
      ],
    );
  }
}

//Generate the list of wonder option widgets..
List<Widget> _buildList(BuildContext context) {
  //begin...
  List<Widget> _list = [];
  final _wonderLoop = Provider.of<WonderOptions>(context);

  final _items = _wonderLoop.wonderNames;

  for (int i = 0; i < _items.length; i++) {
    _list.add(_drawChip(context, _items[i], wonderNamesColors[i]));
  }

  return _list;
}

//Draw the widget...
Widget _drawChip(BuildContext context, String label, int colorCode) {
  //BEgin...
  final _wonderToShow = Provider.of<AppData>(context);

  return WonderChip(
    label: label,
    color: Color(colorCode),
    onTap: (wonder) => _wonderToShow.updateWonderToShow(wonder),
  );
}
