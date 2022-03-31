import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'MovieService/movie_service.dart';
import 'home.dart';

const apiKey = "XXXXXXXXX";

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
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
              create: (context) => MovieNowPlayingService(apiKey: apiKey)
          ),
        ],
        child: Home(),
      )
    );
  }
}
