import 'package:flutter/material.dart';
import 'header_widget.dart';

void main() {
  MyApp myapp = const MyApp();

  runApp(myapp);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange).copyWith(secondary: Colors.deepPurple)
      ),
      home: Scaffold(
          body: Column(
            children: [
              HeaderWidget()
            ],
          )
      ),
    );
  }
}
