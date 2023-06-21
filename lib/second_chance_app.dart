import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SecondChanceApp extends StatelessWidget {
  const SecondChanceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        child: Text('hello'),
      ),
    );
  }
}