import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieapp/movies/models/movie_detail_response.dart';
import 'package:movieapp/movies/repository/movie_repo_impl.dart';

part 'movie_detail_bloc.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState.loading() = MovieDetailStateLoading;

  const factory MovieDetailState.loaded(MovieDetailResponse response) =
      MovieDetailStateLoaded;
}

@freezed
class MovieDetailEvent with _$MovieDetailEvent {
  const factory MovieDetailEvent.load() = MovieDetailEventLoad;
}

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final int id;
  MovieDetailBloc({required this.id})
      : super(const MovieDetailState.loading()) {
    on<MovieDetailEventLoad>(_loadMovieDetail);
  }

  void _loadMovieDetail(
      MovieDetailEventLoad event, Emitter<MovieDetailState> emit) async {
    final repository = MovieRepoImpl();
    final MovieDetailResponse movieDetailResponse =
        await repository.fetchMovieDetails(id);
    emit(MovieDetailState.loaded(movieDetailResponse));
  }
}
