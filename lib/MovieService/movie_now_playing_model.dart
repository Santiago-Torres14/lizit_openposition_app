// To parse this JSON data, do
//
//     final movieNowPlayingModel = movieNowPlayingModelFromJson(jsonString);
part of 'movie_service.dart';

MovieNowPlayingModel movieNowPlayingModelFromJson(String str) => MovieNowPlayingModel.fromJson(json.decode(str));

String movieNowPlayingModelToJson(MovieNowPlayingModel data) => json.encode(data.toJson());

class MovieNowPlayingModel {
  MovieNowPlayingModel({
    required this.page,
    required this.results,
  });

  int page;
  List<Result> results;

  factory MovieNowPlayingModel.fromJson(Map<String, dynamic> json) => MovieNowPlayingModel(
    page: json["page"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    required this.posterPath,
    required this.adult,
    required this.overview,
    required this.releaseDate,
    required this.genreIds,
    required this.id,
    required this.originalTitle,
    required this.originalLanguage,
    required this.title,
    required this.backdropPath,
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.voteAverage,
  });

  String posterPath;
  bool adult;
  String overview;
  DateTime releaseDate;
  List<int> genreIds;
  int id;
  String originalTitle;
  String originalLanguage;
  String title;
  String backdropPath;
  double popularity;
  int voteCount;
  bool video;
  double voteAverage;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    posterPath: json["poster_path"],
    adult: json["adult"],
    overview: json["overview"],
    releaseDate: DateTime.parse(json["release_date"]),
    genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
    id: json["id"],
    originalTitle: json["original_title"],
    originalLanguage: json["original_language"],
    title: json["title"],
    backdropPath: json["backdrop_path"],
    popularity: json["popularity"].toDouble(),
    voteCount: json["vote_count"],
    video: json["video"],
    voteAverage: json["vote_average"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "poster_path": posterPath,
    "adult": adult,
    "overview": overview,
    "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
    "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
    "id": id,
    "original_title": originalTitle,
    "original_language": originalLanguage,
    "title": title,
    "backdrop_path": backdropPath,
    "popularity": popularity,
    "vote_count": voteCount,
    "video": video,
    "vote_average": voteAverage,
  };
}
