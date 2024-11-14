class Movie {
  final String poster, title, genre, synopsis;
  final double rating;
  final int duration;

  Movie({
    required this.poster,
    required this.title,
    required this.genre,
    required this.synopsis,
    required this.rating,
    required this.duration,
  });
}

List<Movie> movies = [
  Movie(
    poster: 'assets/movies/blade-runner.jpeg',
    title: 'Blade Runner 2049 ',
    genre: 'Action',
    synopsis: synopsis,
    rating: 9.0,
    duration: 120,
  ),
  Movie(
    poster: 'assets/movies/Minions.jpg',
    title: 'Minions : Despicable Me 2',
    genre: "Comedy",
    synopsis: synopsis,
    rating: 8.3,
    duration: 110,
  ),
  Movie(
    poster: 'assets/movies/Create-the-scene.jpg',
    title: ' Create the scene (and polish)',
    genre: 'Action',
    synopsis: synopsis,
    rating: 8.0,
    duration: 130,
  ),
  Movie(
      poster: 'assets/movies/Joker.jpg',
      title: 'Joker (2019)',
      genre: 'Criminal',
      synopsis: synopsis,
      rating: 8.9,
      duration: 140),
  Movie(
    poster: 'assets/movies/Blue-Beetle.jpg',
    title: 'Blue Beetle',
    genre: 'Drama',
    synopsis: synopsis,
    rating: 7.5,
    duration: 150,
  ),
  Movie(
    poster: 'assets/movies/titanic.jpg',
    title: 'Titanic',
    genre: 'Romance',
    synopsis: synopsis,
    rating: 7.9,
    duration: 180,
  ),
  Movie(
      poster: 'assets/movies/it.jpg',
      title: 'IT',
      genre: 'Horror',
      synopsis: synopsis,
      rating: 7.3,
      duration: 120),
];
const String synopsis =
    "Synopsis: In the year 2147, humanity lives in a dystopian society where time is the only currency. Evelyn Carter, a brilliant but disillusioned scientist, discovers a way to manipulate time itself. Facing relentless pressure from the authoritarian Timekeepers, who control society by regulating time access, Evelyn is thrust into a high-stakes game of cat and mouse.\nAs Evelyn tries to use her discovery to upend the oppressive system, she forms an unlikely alliance with Rafael, a former Timekeeper turned rebel. Together, they navigate a labyrinth of deceit and danger, striving to ignite a revolution that could alter the fabric of time and reclaim freedom for the oppressed.\nAmidst the chaos, Evelyn confronts her own past and questions the true cost of her invention. The Timekeeper explores themes of power, sacrifice, and the relentless pursuit of justice in a world where every second counts.";
