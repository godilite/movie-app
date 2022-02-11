import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/movies/bloc/latest_movie_bloc.dart';
import 'package:movieapp/movies/bloc/popular_movie_bloc.dart';
import 'package:movieapp/movies/bloc/top_rated_bloc.dart';
import 'package:movieapp/movies/bloc/upcoming_movie_bloc.dart';
import 'package:movieapp/movies/models/movie.dart';
import 'package:movieapp/movies/ui/movie_detail_screen.dart';
import 'package:movieapp/movies/ui/widgets/expansion_stream_builder.dart';
import 'package:movieapp/movies/ui/widgets/loading_widget.dart';
import 'package:movieapp/movies/ui/widgets/movie_expansion_panel.dart';

class MovieHome extends StatelessWidget {
  const MovieHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final latestBloc = context.read<LatestMovieBloc>();
    final popularBloc = context.read<PopularMovieBloc>();
    final topRatedBloc = context.read<TopRatedMovieBloc>();
    final upcomingBloc = context.read<UpcomingMovieBloc>();
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
                child: ExpansionStreamBuilder<bool, bool, bool, bool>(
                    stream1: latestBloc.expansionController.stream,
                    stream2: popularBloc.expansionController.stream,
                    stream3: topRatedBloc.expansionController.stream,
                    stream4: upcomingBloc.expansionController.stream,
                    builder: (context, ex1, ex2, ex3, ex4) {
                      return MovieExpansionPanelList(
                        animationDuration: const Duration(milliseconds: 200),
                        children: [
                          ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return const PanelHeader(title: 'Latest Movies');
                            },
                            body:
                                BlocConsumer<LatestMovieBloc, LatestMovieState>(
                                    listener: (context, state) {
                              if (state is LatestMovieStateLoaded) {
                                if (state.response.error.isNotEmpty) {
                                  _showSnack(context);
                                }
                              }
                            }, builder: (context, state) {
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
                            }),
                            isExpanded: ex1.data ?? true,
                            canTapOnHeader: true,
                          ),
                          ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return const PanelHeader(title: 'Popular Movies');
                            },
                            body: BlocConsumer<PopularMovieBloc,
                                PopularMovieState>(listener: (context, state) {
                              if (state is PopularMovieStateLoaded) {
                                if (state.response.error.isNotEmpty) {
                                  _showSnack(context);
                                }
                              }
                            }, builder: (context, state) {
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
                            }),
                            isExpanded: ex2.data ?? true,
                            canTapOnHeader: true,
                          ),
                          ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return const PanelHeader(
                                  title: 'Top Rated Movies');
                            },
                            body: BlocConsumer<TopRatedMovieBloc,
                                TopRatedMovieState>(listener: (context, state) {
                              if (state is TopRatedMovieStateLoaded) {
                                if (state.response.error.isNotEmpty) {
                                  _showSnack(context);
                                }
                              }
                            }, builder: (context, state) {
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
                            }),
                            isExpanded: ex3.data ?? false,
                            canTapOnHeader: true,
                          ),
                          ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return const PanelHeader(
                                  title: 'Upcoming Movies');
                            },
                            body: BlocConsumer<UpcomingMovieBloc,
                                UpcomingMovieState>(listener: (context, state) {
                              if (state is UpcomingMovieStateLoaded) {
                                if (state.response.error.isNotEmpty) {
                                  _showSnack(context);
                                }
                              }
                            }, builder: (context, state) {
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
                            }),
                            isExpanded: ex4.data ?? false,
                            canTapOnHeader: true,
                          ),
                        ],
                        expansionCallback: (panelIndex, isExpanded) {
                          switch (panelIndex) {
                            case 0:
                              latestBloc
                                  .add(LatestMovieEvent.expand(isExpanded));

                              break;
                            case 1:
                              popularBloc
                                  .add(PopularMovieEvent.expand(isExpanded));
                              break;
                            case 2:
                              topRatedBloc
                                  .add(TopRatedMovieEvent.expand(isExpanded));

                              break;
                            case 3:
                              upcomingBloc
                                  .add(UpcomingMovieEvent.expand(isExpanded));
                              break;
                            default:
                          }
                        },
                      );
                    }),
              ),
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

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<Movie> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () async => await showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              builder: (BuildContext context) {
                return MovieDetailScreen(
                    movieId: data[index].id,
                    onClose: () => Navigator.of(context).pop());
              }),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://image.tmdb.org/t/p/w500/${data[index].posterPath}",
                      placeholder: (context, url) => const SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Text(
                      data[index].title ?? "No title",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
