import 'package:nyc_experiments/provider/helpers/constants.dart';

class WonderOptions {
  _CurrentWonderOptions _currentWonderOptions =
      _CurrentWonderOptions(wonderConstOptions);

  _CurrentWonderNames _currentWonderNames = _CurrentWonderNames(wonderNamesList);

  int get wonderCount => _currentWonderOptions.wonderCount;

  set wonderCount(int newValue) {
    if (newValue == _currentWonderOptions.wonderCount) return;
    _currentWonderOptions = _CurrentWonderOptions(newValue);
  }

  List<String> get wonderNames => _currentWonderNames.wonderNames;

  set wonderNames(List<String> newValue) {
    if (newValue == _currentWonderNames.wonderNames) return;
    _currentWonderNames = _CurrentWonderNames(newValue);
  }

  WonderOptions() {
    _fetchWonders();
    _generateWondersList();
  }

  void _fetchWonders() {
    _currentWonderOptions = _CurrentWonderOptions(wonderCount);
  }

  void _generateWondersList() {
    _currentWonderNames = _CurrentWonderNames(wonderNames);
  }
}

class _CurrentWonderOptions {
  final int wonderCount;

  const _CurrentWonderOptions(
    this.wonderCount,
  );
}

class _CurrentWonderNames {
  final List<String> wonderNames;

  const _CurrentWonderNames(
    this.wonderNames,
  );
}
