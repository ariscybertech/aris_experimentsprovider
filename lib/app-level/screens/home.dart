import 'package:flutter/material.dart';
import 'package:nyc_experiments/app-level/helpers/constants.dart';
import 'package:nyc_experiments/app-level/widgets/option-button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Begin...

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OptionButton(
                buttonText: optionProvider,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    providerRoute,
                    arguments: '$showingProvider',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
