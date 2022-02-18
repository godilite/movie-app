import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieapp/movies/models/movie_response.dart';
import 'package:movieapp/movies/repository/movie_repository.dart';
part 'popular_movie_bloc.freezed.dart';

@freezed
class PopularMovieState with _$PopularMovieState {
  const factory PopularMovieState.loading() = PopularMovieStateLoading;

  const factory PopularMovieState.loaded(MovieResponse response) =
      PopularMovieStateLoaded;
}

@freezed
class PopularMovieEvent with _$PopularMovieEvent {
  const factory PopularMovieEvent.load() = PopularMovieEventLoad;
  const factory PopularMovieEvent.expand(bool isExpanded) =
      PopularMovieEventExpand;
}

class PopularMovieBloc extends Bloc<PopularMovieEvent, PopularMovieState> {
  PopularMovieBloc({required MovieRepository repository})
      : _repository = repository,
        super(const PopularMovieState.loading()) {
    on<PopularMovieEventLoad>(_onMovieLoadPopular);
    on<PopularMovieEventExpand>(_onExpand);
  }

  final MovieRepository _repository;

  StreamController<bool> expansionController = StreamController();

  void _onMovieLoadPopular(
      PopularMovieEventLoad event, Emitter<PopularMovieState> emit) async {
    final movieResponse = await _repository.fetchPopularMovies();
    emit(PopularMovieStateLoaded(movieResponse));
  }

  void _onExpand(
      PopularMovieEventExpand event, Emitter<PopularMovieState> emit) async {
    expansionController.add(!event.isExpanded);
  }
}
