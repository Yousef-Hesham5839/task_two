import 'package:flutter/material.dart';
import 'package:task_two/models/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;
  Color getRatingColor(double rating) {
   if (rating >= 8) {
     return Colors.green;
   } else if (rating >= 6) {
     return Colors.orange;
   } else {
     return Colors.red;
   }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Image.asset(
                movie.image,
                width: MediaQuery.sizeOf(context).width * 0.45,
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                 decoration: BoxDecoration(
                  color: getRatingColor(movie.rating),
                  borderRadius: BorderRadius.circular(6),
                 ),
                 child: Text(
                 movie.rating.toString(),
                  style: const TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                 ),
                ),
               ),
              ),
              const Positioned(
               top: 8,
               right: 8,
               child: Icon(
                Icons.bookmark,
                color: Colors.white,
               ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Text(
                  movie.year.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,            
            ),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: TextStyle(
                       fontSize: MediaQuery.sizeOf(context).width * 0.0292,
                       fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      movie.genre,
                      style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).width * 0.02,
                      color: Colors.grey
                     ),
                    ),
                  ],
             ),
          ),
        ],
      ),
    );
  }
}
