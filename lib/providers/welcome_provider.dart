import 'package:flutter/material.dart';

class WelcomeProvider extends ChangeNotifier {
  bool _showNewContent = false;

  bool get showNewContent => _showNewContent;

  void showNewScreen() {
    _showNewContent = true;
    notifyListeners();
  }
}
