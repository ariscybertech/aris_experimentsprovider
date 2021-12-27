import 'package:flutter/material.dart';

class WonderChip extends StatelessWidget {
  /// ----------------------------------------------------------
  ///Wonder Chip Widget.....
  /// ----------------------------------------------------------
  const WonderChip({
    Key key,
    @required this.label,
    this.color = const Color(0xFFba68c8),
    @required this.onTap,
  }) : super(key: key);

  ///Name of the chip...
  final String label;

  ///Color of the chip...
  final Color color;

  ///Action on tap of the chip....
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    ///Begin...

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Chip(
          label: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: color,
          elevation: 4,
          shadowColor: Colors.grey[50],
          padding: const EdgeInsets.all(4.0),
        ),
        onTap: () => onTap(label),
      ),
    );
  }
}
