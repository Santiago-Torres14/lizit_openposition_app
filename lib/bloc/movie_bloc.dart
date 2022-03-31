import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:new_hello_world/MovieService/movie_service.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {

  final MovieNowPlayingService movieService;

  MovieBloc(this.movieService) : super(MovieLoading()) {
    on<FetchMovie>((event, emit) async {
      emit(MovieLoading());
      final movies = await movieService.getMovieNowPlaying();
      emit(MovieLoaded(movies: movies));
    });
  }
}
