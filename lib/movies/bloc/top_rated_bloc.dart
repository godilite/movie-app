import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieapp/movies/models/movie_response.dart';
import 'package:movieapp/movies/repository/movie_repository.dart';
part 'top_rated_bloc.freezed.dart';

@freezed
class TopRatedMovieState with _$TopRatedMovieState {
  const factory TopRatedMovieState.loading() = TopRatedMovieStateLoading;

  const factory TopRatedMovieState.loaded(MovieResponse response) =
      TopRatedMovieStateLoaded;
}

@freezed
class TopRatedMovieEvent with _$TopRatedMovieEvent {
  const factory TopRatedMovieEvent.load() = TopRatedMovieEventLoad;
  const factory TopRatedMovieEvent.expand(bool isExpanded) =
      TopRatedMovieEventExpand;
}

class TopRatedMovieBloc extends Bloc<TopRatedMovieEvent, TopRatedMovieState> {
  TopRatedMovieBloc({required MovieRepository repository})
      : _repository = repository,
        super(const TopRatedMovieState.loading()) {
    on<TopRatedMovieEventLoad>(_onMovieLoadTopRated);
    on<TopRatedMovieEventExpand>(_onExpand);
  }

  final MovieRepository _repository;

  final StreamController<bool> expansionController = StreamController();

  void _onMovieLoadTopRated(
      TopRatedMovieEventLoad event, Emitter<TopRatedMovieState> emit) async {
    final movieResponse = await _repository.fetchMovieTopRated();
    emit(TopRatedMovieStateLoaded(movieResponse));
  }

  void _onExpand(
      TopRatedMovieEventExpand event, Emitter<TopRatedMovieState> emit) async {
    expansionController.add(!event.isExpanded);
    add(const TopRatedMovieEvent.load());
  }
}
