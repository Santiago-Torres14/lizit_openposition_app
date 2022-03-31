import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  final List<String> products;

  const Movie({Key? key, this.products = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((_element) => Card(
                child: Column(
                  children: [Image.asset('assets/food.jfif'), Text(_element)],
                ),
              ))
          .toList(),
    );
  }
}
