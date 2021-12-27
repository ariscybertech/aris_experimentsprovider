import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  /// ----------------------------------------------------------
  ///Creates the App Option Button....
  /// ----------------------------------------------------------
  const OptionButton({
    Key key,
    @required this.buttonText,
    @required this.onTap,
  }) : super(key: key);

  ///Specify the button text...
  final String buttonText;

  ///Action on tap of the button....
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.all(8.0),
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: onTap,
      child: Text(buttonText),
    );
  }
}
