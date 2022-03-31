import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_hello_world/MovieService/movie_service.dart';
import 'bloc/bloc.dart';
import 'header_widget.dart';
import 'movie.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieBloc(
        RepositoryProvider.of<MovieNowPlayingService>(context),
      )..add(const FetchMovie()),
      child: Scaffold(
          body: BlocBuilder<MovieBloc, MovieState>(
            builder: (context, state) {
              if (state is MovieLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is MovieLoaded){
                return Column(
                  children: [
                    HeaderWidget(),
                    Expanded(
                      child: ListView.builder(itemBuilder: (context, index){
                        return Movie(posterPath: state.movies.results[index].posterPath, title: state.movies.results[index].title,);
                      }, itemCount: state.movies.results.length),
                    ),
                  ],
                );
              }
              return Container();
            },
          )
      ),
    );
  }
}
