import 'package:flutter/material.dart';

class WelcomeProvider with ChangeNotifier {
  String _welcomeMessage = "Welcome to NGO Connect!";

  String get welcomeMessage => _welcomeMessage;

  void updateMessage(String newMessage) {
    _welcomeMessage = newMessage;
    notifyListeners();
  }
}
