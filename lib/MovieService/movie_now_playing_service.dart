part of 'movie_service.dart';

class MovieNowPlayingService{
  String apiKey;
  String language;
  String page;
  final String baseUrl = "https://api.themoviedb.org/3/movie/now_playing?";

  MovieNowPlayingService({required this.apiKey, this.language="en-US", this.page = "1"});

  Future<MovieNowPlayingModel> getMovieNowPlaying() async {
    final url = '$baseUrl' + 'api_key=$apiKey' + '&language=$language' + '&page=$page';
    final response = await get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Error getting movie');
    }

    final json = movieNowPlayingModelFromJson(response.body);
    return json;
  }
}