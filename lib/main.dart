import 'package:flutter/material.dart';
import 'package:task_two/models/movie.dart';
import 'package:task_two/widgets/movie_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MovieLibrary(),
    );
  }
}

class MovieLibrary extends StatelessWidget{
  const MovieLibrary({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: MovieCard(
            movie: movies[0]
          ),
        ),
      ),
    );
  }
}
