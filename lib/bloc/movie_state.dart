part of 'movie_bloc.dart';

@immutable
abstract class MovieState extends Equatable {
  @override
  List<Object> get props => [];
}

class MovieInitial extends MovieState {}

class MovieLoading extends MovieState {}

class MovieLoaded extends MovieState {
  final MovieNowPlayingModel movies;

  MovieLoaded({required this.movies});

  @override
  List<Object> get props => [movies];
}