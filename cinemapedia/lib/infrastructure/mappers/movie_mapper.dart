import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
          : 'https://th.bing.com/th/id/R.953dd785698f1ba1bbb1c42cfafa850b?rik=UDfgtBknLPLyTw&riu=http%3a%2f%2fwww.natun-barta.com%2fimages%2fpage-not-found.png&ehk=jtQ%2b8GJnjgujG6Waf0cqg1dMC0O%2fnfwPtvCv75Hro6Q%3d&risl=&pid=ImgRaw&r=0',
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
          : 'https://th.bing.com/th/id/R.953dd785698f1ba1bbb1c42cfafa850b?rik=UDfgtBknLPLyTw&riu=http%3a%2f%2fwww.natun-barta.com%2fimages%2fpage-not-found.png&ehk=jtQ%2b8GJnjgujG6Waf0cqg1dMC0O%2fnfwPtvCv75Hro6Q%3d&risl=&pid=ImgRaw&r=0',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);
}
