import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup_screen/Auth/opt.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'LeonSans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Opt(),
      debugShowCheckedModeBanner: false,
    );
  }
}
