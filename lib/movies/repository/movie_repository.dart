import 'package:dio/dio.dart';
import 'package:movieapp/constants/app_constants.dart';
import 'package:movieapp/movies/models/movie_detail_response.dart';
import 'package:movieapp/movies/models/movie_response.dart';

class MovieRepository {
  MovieRepository({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;
  static final getLatestUrl = '${AppConst.mainUrl}/movie/now_playing';
  static final getTopRatedUrl = '${AppConst.mainUrl}/movie/top_rated';
  static final getUpcomingUrl = '${AppConst.mainUrl}/movie/upcoming';
  static final getPopularUrl = '${AppConst.mainUrl}/movie/popular';
  static final movieUrl = '${AppConst.mainUrl}/movie';

  Future<MovieResponse> fetchLatestMovies() async {
    return await _getMovies(getLatestUrl);
  }

  Future<MovieResponse> fetchMovieTopRated() async {
    return await _getMovies(getTopRatedUrl);
  }

  Future<MovieResponse> fetchPopularMovies() async {
    return await _getMovies(getPopularUrl);
  }

  Future<MovieResponse> fetchUpcomingMovies() async {
    return await _getMovies(getUpcomingUrl);
  }

  Future<MovieDetailResponse> fetchMovieDetails(int id) async {
    final params = {
      "api_key": AppConst.apiKey,
      "language": "en-US",
    };
    try {
      Response response =
          await _dio.get(movieUrl + "/$id", queryParameters: params);
      return MovieDetailResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieDetailResponse.withError("$error");
    }
  }

  Future<MovieResponse> _getMovies(url) async {
    final params = {"api_key": AppConst.apiKey, "language": "en-US", "page": 1};
    try {
      Response response = await _dio.get(url, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }
}
