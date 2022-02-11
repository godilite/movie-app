import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieapp/movies/models/movie_response.dart';
import 'package:movieapp/movies/models/ticker.dart';
import 'package:movieapp/movies/repository/movie_repo_impl.dart';
part 'latest_movie_bloc.freezed.dart';

@freezed
class LatestMovieState with _$LatestMovieState {
  const factory LatestMovieState.loading() = LatestMovieStateLoading;

  const factory LatestMovieState.loaded(MovieResponse response) =
      LatestMovieStateLoaded;
}

@freezed
class LatestMovieEvent with _$LatestMovieEvent {
  const factory LatestMovieEvent.load() = LatestMovieEventLoad;
  const factory LatestMovieEvent.expand(bool isExpanded) =
      LatestMovieEventExpand;
}

class LatestMovieBloc extends Bloc<LatestMovieEvent, LatestMovieState> {
  LatestMovieBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const LatestMovieState.loading()) {
    on<LatestMovieEventLoad>(_onMovieLoadLatest);
    on<LatestMovieEventExpand>(_onExpand);
  }
  final Ticker _ticker;
  final _repository = MovieRepoImpl();
  static const int _seconds = 30;

  StreamController<bool> expansionController = StreamController();
  StreamSubscription<int>? _tickerSubscription;
  late MovieResponse movieResponse;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onMovieLoadLatest(
      LatestMovieEventLoad event, Emitter<LatestMovieState> emit) async {
    movieResponse = await _repository.fetchLatestMovies();
    emit(LatestMovieStateLoaded(movieResponse));
    _onRefreshData();
  }

  void _onExpand(
      LatestMovieEventExpand event, Emitter<LatestMovieState> emit) async {
    if (event.isExpanded) {
      _tickerSubscription?.pause();
    } else {
      _tickerSubscription?.resume();
    }
    expansionController.add(!event.isExpanded);
  }

  //Polling Handler to refresh data every 30 seconds
  void _onRefreshData() {
    _tickerSubscription =
        _ticker.tick(ticks: _seconds).listen((duration) async {
      if (duration == 0) add(const LatestMovieEventLoad());
    });
  }
}
