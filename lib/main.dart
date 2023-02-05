import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/screens/get_bool/set_bool_first_screen.dart';
import 'package:shareprefrence_practice_project/screens/get_int/get_int_frist_screen.dart';
import 'package:shareprefrence_practice_project/screens/get_model/set_model_screen.dart';
import 'package:shareprefrence_practice_project/screens/get_string/set_string_data_screen.dart';

void main() {
  runApp(const MyApp());
}

class ScreenList {
  String title;
  Widget child;
  ScreenList({required this.title, required this.child});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SetBoolFirstScreen(),
    );
  }
}
