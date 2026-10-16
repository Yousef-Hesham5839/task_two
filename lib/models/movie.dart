class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });

  
}


final List<Movie> movies = [
  const Movie(
    title: 'Transformers: The Last Knight',
    genre: 'Action',
    year: 2017,
    rating: 5.2,
    image: 'lib/assets/posters/transformers.jpg',
  ),
  const Movie(
    title: 'Oppenheimer',
    genre: 'Drama',
    year: 2023,
    rating: 8.3,
    image: 'lib/assets/posters/oppenheimer.jpg',
  ),
  const Movie(
    title: 'Shutter Island',
    genre: 'Thriller',
    year: 2010,
    rating: 8.2,
    image: 'lib/assets/posters/shutter_island.jpg',
  ),
  const Movie(
    title: 'The Godfather',
    genre: 'Crime',
    year: 1972,
    rating: 9.2,
    image: 'lib/assets/posters/godfather.jpg',
  ),
  const Movie(
    title: 'Avengers: Doomsday',
    genre: 'Action',
    year: 2026,
    rating: 0.0,
    image: 'lib/assets/posters/avengers_doomsday.jpg',
  ),
  const Movie(
    title: 'The Batman',
    genre: 'Action',
    year: 2022,
    rating: 7.8,
    image: 'lib/assets/posters/the_batman.jpg',
  ),
  const Movie(
    title: 'Star Wars',
    genre: 'Sci-Fi',
    year: 1977,
    rating: 8.6,
    image: 'lib/assets/posters/star_wars.jpg',
  ),
  const Movie(
    title: 'Sherlock Holmes',
    genre: 'Mystery',
    year: 2009,
    rating: 7.6,
    image: 'lib/assets/posters/sherlock_holmes.jpg',
  ),
];
