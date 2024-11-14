import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import 'package:flutter_ui_design/Cinema%20App%20UI/consts.dart';
import 'package:flutter_ui_design/Cinema%20App%20UI/pages/detail_page.dart';

class GenreMoviesPage extends StatelessWidget {
  final String genre;
  final List<Movie> genreMovies;

  const GenreMoviesPage({
    Key? key,
    required this.genre,
    required this.genreMovies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: Text('$genre Movies'),
        foregroundColor: Colors.white,
        backgroundColor: appBackgroundColor,
      ),
      body: ListView.builder(
        itemCount: genreMovies.length,
        itemBuilder: (context, index) {
          final movie = genreMovies[index];
          return ListTile(
            leading: Image.asset(
              movie.poster,
              fit: BoxFit.cover,
              height: 60,
              width: 40,
            ),
            title: Text(
              movie.title,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              movie.genre,
              style: TextStyle(color: Colors.white70),
            ),
            onTap: () {
              // Navigate to Movie Detail Page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MovieDetailPage(movie: movie),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
