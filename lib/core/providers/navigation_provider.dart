import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

// import 'package:flutter/material.dart';

// class NavigationProvider with ChangeNotifier {
//   int _currentIndex = 0;

//   int get currentIndex => _currentIndex;

//   void setIndex(int index, BuildContext context) {
//     _currentIndex = index;
//     notifyListeners();
//     _navigateToScreen(index, context);
//   }

//   void _navigateToScreen(int index, BuildContext context) {
//     switch (index) {
//       case 0:
//         Navigator.pushReplacementNamed(context, '/people_home');
//         break;
//       case 1:
//         Navigator.pushReplacementNamed(context, '/search');
//         break;
//       case 2:
//         Navigator.pushReplacementNamed(context, '/favorite');
//         break;
//       case 3:
//         Navigator.pushReplacementNamed(context, '/profile');
//         break;
//       default:
//         Navigator.pushReplacementNamed(context, '/people_home');
//     }
//   }
// }


















// import 'package:flutter/material.dart';
// import 'package:ngo_scout/domain/providers/auth_provider.dart';
// import 'package:provider/provider.dart';

// class NavigationProvider with ChangeNotifier {
//   int _currentIndex = 0;

//   int get currentIndex => _currentIndex;

//   void setIndex(int index, BuildContext context) {
//     _currentIndex = index;
//     notifyListeners();
//     _navigateToScreen(index, context);
//   }

//   void _navigateToScreen(int index, BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//     final userType = authProvider.userType;

//     switch (index) {
//       case 0:
//         Navigator.pushReplacementNamed(
//             context, userType == 'ngo' ? '/ngo_home' : '/people_home');
//         break;
//       case 1:
//         Navigator.pushReplacementNamed(context, '/search');
//         break;
//       case 2:
//         Navigator.pushReplacementNamed(context, '/favorite');
//         break;
//       case 3:
//         Navigator.pushReplacementNamed(context, '/profile');
//         break;
//       default:
//         Navigator.pushReplacementNamed(
//             context, userType == 'ngo' ? '/ngo_home' : '/people_home');
//     }
//   }
// }
