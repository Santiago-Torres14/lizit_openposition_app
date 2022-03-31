import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  final String title;
  final String posterPath;
  final String baseUrl = "https://image.tmdb.org/t/p/w500";

  const Movie({Key? key, required this.title, required this.posterPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(baseUrl + posterPath),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
