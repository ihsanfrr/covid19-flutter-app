import 'package:covid19/screens/wrapper_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COVID-19 Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
      home: const WrapperScreen(),
    );
  }
}
