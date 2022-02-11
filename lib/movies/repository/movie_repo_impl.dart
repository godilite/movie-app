import 'package:dio/dio.dart';
import 'package:movieapp/constants/app_constants.dart';
import 'package:movieapp/movies/models/movie_detail_response.dart';
import 'package:movieapp/movies/models/movie_response.dart';
import 'package:movieapp/movies/repository/movie_repository.dart';

class MovieRepoImpl implements MovieRepository {
  final _dio = Dio();
  final getPlayingUrl = '${AppConst.mainUrl}/movie/now_playing';
  final getTopRatedUrl = '${AppConst.mainUrl}/movie/top_rated';
  final getUpcomingUrl = '${AppConst.mainUrl}/movie/upcoming';
  final getPopularUrl = '${AppConst.mainUrl}/movie/popular';
  final movieUrl = '${AppConst.mainUrl}/movie';

  @override
  Future<MovieResponse> fetchLatestMovies() async {
    var params = {"api_key": AppConst.apiKey, "language": "en-US", "page": 1};
    try {
      Response response =
          await _dio.get(getPlayingUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  @override
  Future<MovieResponse> fetchMovieTopRated() async {
    var params = {"api_key": AppConst.apiKey, "language": "en-US", "page": 1};
    try {
      Response response =
          await _dio.get(getTopRatedUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  @override
  Future<MovieResponse> fetchPopularMovies() async {
    var params = {"api_key": AppConst.apiKey, "language": "en-US", "page": 1};
    try {
      Response response =
          await _dio.get(getPopularUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  @override
  Future<MovieResponse> fetchUpcomingMovies() async {
    final params = {"api_key": AppConst.apiKey, "language": "en-US", "page": 1};
    try {
      Response response =
          await _dio.get(getUpcomingUrl, queryParameters: params);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

  @override
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
}
