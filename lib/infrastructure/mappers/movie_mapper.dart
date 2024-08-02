import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/themoviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/themoviedb/movie_themoviedb.dart';

class MovieMapper {
  static Movie theMovieDBToEntity(MovieTheMovieDB themoviedb) => Movie(
      adult: themoviedb.adult,
      backdropPath: themoviedb.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500${themoviedb.backdropPath}'
          : 'https://programacion.net/files/article/20161110041116_image-not-found.png',
      genreIds: themoviedb.genreIds.map((e) => e.toString()).toList(),
      id: themoviedb.id,
      originalLanguage: themoviedb.originalLanguage,
      originalTitle: themoviedb.originalTitle,
      overview: themoviedb.overview,
      popularity: themoviedb.popularity,
      posterPath: themoviedb.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500${themoviedb.posterPath}'
          : 'no-poster',
      releaseDate: themoviedb.releaseDate,
      title: themoviedb.title,
      video: themoviedb.video,
      voteAverage: themoviedb.voteAverage,
      voteCount: themoviedb.voteCount);

  static Movie movieDetailsToEntity(MovieDetails themoviedb) => Movie(
      adult: themoviedb.adult,
      backdropPath: themoviedb.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500${themoviedb.backdropPath}'
          : 'https://programacion.net/files/article/20161110041116_image-not-found.png',
      genreIds: themoviedb.genres.map((e) => e.name).toList(),
      id: themoviedb.id,
      originalLanguage: themoviedb.originalLanguage,
      originalTitle: themoviedb.originalTitle,
      overview: themoviedb.overview,
      popularity: themoviedb.popularity,
      posterPath: themoviedb.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500${themoviedb.posterPath}'
          : 'https://ih1.redbubble.net/image.1893341687.8294/fposter,small,wall_texture,product,750x1000.jpg',
      releaseDate: themoviedb.releaseDate,
      title: themoviedb.title,
      video: themoviedb.video,
      voteAverage: themoviedb.voteAverage,
      voteCount: themoviedb.voteCount);
}
