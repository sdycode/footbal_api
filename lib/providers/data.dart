import 'package:flutter/foundation.dart';

class Data with ChangeNotifier {
  updateUI() {
    notifyListeners();
  }
}
