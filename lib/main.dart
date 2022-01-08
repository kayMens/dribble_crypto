import 'package:dribble_crypto/views/dashboard/dashboard.dart';
import 'package:dribble_crypto/views/exchange/exchange.dart';
import 'package:dribble_crypto/views/on_boarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dribble Crypto',
      theme: ThemeData(
          fontFamily: 'Quicksand',
          primarySwatch: Colors.teal,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )))),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnBoarding(),
        '/dashboard': (context) => const Dashboard(),
        '/exchange': (context) => const Exchange(),
      },
    );
  }
}
