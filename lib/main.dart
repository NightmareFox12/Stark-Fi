import 'package:flutter/material.dart';
import 'package:stark_fi/screens/main_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: Colors.black,
  //     statusBarIconBrightness: Brightness.dark,
  //     statusBarBrightness: Brightness.light,
  //     systemNavigationBarIconBrightness: Brightness.light,
  //   ),
  // );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen());
  }
}
