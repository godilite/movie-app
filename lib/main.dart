import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/movies/bloc/latest_movie_bloc.dart';
import 'package:movieapp/movies/bloc/popular_movie_bloc.dart';
import 'package:movieapp/movies/bloc/top_rated_bloc.dart';
import 'package:movieapp/movies/bloc/upcoming_movie_bloc.dart';
import 'package:movieapp/movies/models/ticker.dart';
import 'package:movieapp/movies/ui/movie_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LatestMovieBloc>(
            create: (BuildContext context) =>
                LatestMovieBloc(ticker: const Ticker())
                  ..add(const LatestMovieEvent.load()),
          ),
          BlocProvider<PopularMovieBloc>(
            create: (BuildContext context) =>
                PopularMovieBloc()..add(const PopularMovieEvent.load()),
          ),
          BlocProvider<UpcomingMovieBloc>(
            create: (BuildContext context) => UpcomingMovieBloc(),
          ),
          BlocProvider<TopRatedMovieBloc>(
            create: (BuildContext context) => TopRatedMovieBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const App(),
        ));
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MovieHome();
  }
}
