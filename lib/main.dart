import 'package:cat_task6/screen1.dart';
import 'package:cat_task6/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'screen1',
      routes: {
        'screen1': (context) => const Screen1(),
        'screen2': (context) => const Screen2('This is a shape of List Tile'),
      },
      title: 'Task 3',
      theme: ThemeData(
        listTileTheme: ListTileThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
