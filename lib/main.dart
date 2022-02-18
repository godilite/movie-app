import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/movies/bloc/latest_movie_bloc.dart';
import 'package:movieapp/movies/bloc/popular_movie_bloc.dart';
import 'package:movieapp/movies/bloc/top_rated_bloc.dart';
import 'package:movieapp/movies/bloc/upcoming_movie_bloc.dart';
import 'package:movieapp/movies/models/ticker.dart';
import 'package:movieapp/movies/repository/movie_repository.dart';
import 'package:movieapp/movies/ui/movie_home.dart';

void main() {
  final movieRepository = MovieRepository();
  runApp(MyApp(
    movieRepository: movieRepository,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.movieRepository}) : super(key: key);
  final MovieRepository movieRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MovieRepository(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const App(),
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LatestMovieBloc>(
          create: (BuildContext context) => LatestMovieBloc(
            ticker: const Ticker(),
            repository: context.read<MovieRepository>(),
          )..add(const LatestMovieEvent.load()),
        ),
        BlocProvider<PopularMovieBloc>(
          create: (BuildContext context) =>
              PopularMovieBloc(repository: context.read<MovieRepository>())
                ..add(const PopularMovieEvent.load()),
        ),
        BlocProvider<UpcomingMovieBloc>(
          lazy: true,
          create: (BuildContext context) => UpcomingMovieBloc(
            repository: context.read<MovieRepository>(),
          ),
        ),
        BlocProvider<TopRatedMovieBloc>(
          lazy: true,
          create: (BuildContext context) => TopRatedMovieBloc(
            repository: context.read<MovieRepository>(),
          ),
        ),
      ],
      child: const MovieHome(),
    );
  }
}
