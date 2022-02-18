import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/movies/bloc/latest_movie_bloc.dart';
import 'package:movieapp/movies/bloc/popular_movie_bloc.dart';
import 'package:movieapp/movies/bloc/top_rated_bloc.dart';
import 'package:movieapp/movies/bloc/upcoming_movie_bloc.dart';
import 'package:movieapp/movies/ui/widgets/loading_widget.dart';
import 'package:movieapp/movies/ui/widgets/movie_card.dart';

class MovieHome extends StatelessWidget {
  const MovieHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              backgroundColor: Colors.transparent,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.network(
                    "https://image.tmdb.org/t/p/original/putDqnndrdRzRRy5sVPYMH5FTjI.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: const PanelHeader(title: 'Latest Movies'),
                        onExpansionChanged: (isExpanded) => context
                            .read<LatestMovieBloc>()
                            .add(LatestMovieEvent.expand(isExpanded)),
                        children: [
                          LatestMovieSection(
                            onError: () => _showSnack(context),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: const PanelHeader(title: 'Popular Movies'),
                        onExpansionChanged: (isExpanded) => context
                            .read<PopularMovieBloc>()
                            .add(PopularMovieEvent.expand(isExpanded)),
                        children: [
                          PopularMovieSection(
                            onError: () => _showSnack(context),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: const PanelHeader(title: 'Top Rated Movies'),
                        onExpansionChanged: (isExpanded) => context
                            .read<TopRatedMovieBloc>()
                            .add(TopRatedMovieEvent.expand(isExpanded)),
                        children: [
                          TopMovieSection(
                            onError: () => _showSnack(context),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: const PanelHeader(title: 'Upcomming Movies'),
                        onExpansionChanged: (isExpanded) => context
                            .read<UpcomingMovieBloc>()
                            .add(UpcomingMovieEvent.expand(isExpanded)),
                        children: [
                          UpcomingMovieSection(
                            onError: () => _showSnack(context),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSnack(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Unable to fetch movies',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}

class LatestMovieSection extends StatelessWidget {
  const LatestMovieSection({
    Key? key,
    required this.onError,
  }) : super(key: key);

  final VoidCallback onError;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LatestMovieBloc, LatestMovieState>(
      listener: (context, state) {
        if (state is LatestMovieStateLoaded) {
          if (state.response.error.isNotEmpty) {
            onError();
          }
        }
      },
      builder: (context, state) {
        return state.when(
          loaded: (response) {
            final data = response.movies;
            return MovieCard(data: data);
          },
          loading: () => const Padding(
            padding: EdgeInsets.all(10.0),
            child: LoadingWidget(),
          ),
        );
      },
    );
  }
}

class PopularMovieSection extends StatelessWidget {
  const PopularMovieSection({
    Key? key,
    required this.onError,
  }) : super(key: key);

  final VoidCallback onError;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PopularMovieBloc, PopularMovieState>(
      listener: (context, state) {
        if (state is PopularMovieStateLoaded) {
          if (state.response.error.isNotEmpty) {
            onError();
          }
        }
      },
      builder: (context, state) {
        return state.when(
          loaded: (response) {
            final data = response.movies;
            return MovieCard(data: data);
          },
          loading: () => const Padding(
            padding: EdgeInsets.all(10.0),
            child: LoadingWidget(),
          ),
        );
      },
    );
  }
}

class UpcomingMovieSection extends StatelessWidget {
  const UpcomingMovieSection({
    Key? key,
    required this.onError,
  }) : super(key: key);

  final VoidCallback onError;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LatestMovieBloc, LatestMovieState>(
      listener: (context, state) {
        if (state is LatestMovieStateLoaded) {
          if (state.response.error.isNotEmpty) {
            onError();
          }
        }
      },
      builder: (context, state) {
        return state.when(
          loaded: (response) {
            final data = response.movies;
            return MovieCard(data: data);
          },
          loading: () => const Padding(
            padding: EdgeInsets.all(10.0),
            child: LoadingWidget(),
          ),
        );
      },
    );
  }
}

class TopMovieSection extends StatelessWidget {
  const TopMovieSection({
    Key? key,
    required this.onError,
  }) : super(key: key);

  final VoidCallback onError;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LatestMovieBloc, LatestMovieState>(
      listener: (context, state) {
        if (state is LatestMovieStateLoaded) {
          if (state.response.error.isNotEmpty) {
            onError();
          }
        }
      },
      builder: (context, state) {
        return state.when(
          loaded: (response) {
            final data = response.movies;
            return MovieCard(data: data);
          },
          loading: () => const Padding(
            padding: EdgeInsets.all(10.0),
            child: LoadingWidget(),
          ),
        );
      },
    );
  }
}

class PanelHeader extends StatelessWidget {
  const PanelHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
