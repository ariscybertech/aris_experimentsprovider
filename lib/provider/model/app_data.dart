import 'package:flutter/foundation.dart';
import 'package:nyc_experiments/provider/helpers/constants.dart';

class AppData with ChangeNotifier {
  String wonder;

  AppData({
    this.wonder = firstWonderForLoading,
  });

  void updateWonderToShow(String _country) {
    wonder = _country;
    notifyListeners();
  }
}
