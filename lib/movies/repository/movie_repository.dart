import 'package:movieapp/movies/models/movie_detail_response.dart';
import 'package:movieapp/movies/models/movie_response.dart';

abstract class MovieRepository {
  Future<MovieResponse> fetchLatestMovies();
  Future<MovieResponse> fetchPopularMovies();
  Future<MovieResponse> fetchMovieTopRated();
  Future<MovieResponse> fetchUpcomingMovies();
  Future<MovieDetailResponse> fetchMovieDetails(int id);
}
