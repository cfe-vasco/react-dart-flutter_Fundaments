import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas_app_flutter/models/models.dart';
import 'package:peliculas_app_flutter/models/search_response.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey_ = 'fc717f1e907ebd61dcb318d2949c503c';
  final String _baseURL = 'api.themoviedb.org';
  final String _lenguaje = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  Map<int, List<Cast>> moviesCast = {};

  int _popularPage = 0;

  MoviesProvider() {
    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    final url = Uri.https(_baseURL, endpoint, {
      'api_key': _apiKey_,
      'language': _lenguaje,
      'page': '$page',
    });

    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData('3/movie/now_playing');
    final nowPlayigResponse = NowPlayingResponse.fromJson(jsonData);

    onDisplayMovies = nowPlayigResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage++;
    final jsonData = await _getJsonData('3/movie/popular', _popularPage);
    final popularResponse = PopularResponse.fromJson(jsonData);

    popularMovies = [...popularMovies, ...popularResponse.results];
    notifyListeners();
  }

  Future<List<Cast>> getMovieCast(int movieId) async {
    if (moviesCast.containsKey(movieId)) return moviesCast[movieId]!;

    final jsonData = await _getJsonData('3/movie/$movieId/credits');
    final creditsResponse = CreditsResponse.fromJson(jsonData);

    moviesCast[movieId] = creditsResponse.cast;
    return creditsResponse.cast;
  }

  Future<List<Movie>> searchMovies(String query) async {
    final url = Uri.https(_baseURL, '3/search/movie',
        {'api_key': _apiKey_, 'language': _lenguaje, 'query': query});

    final response = await http.get(url);
    final searchResponse = SearchResponse.fromJson(response.body);

    return searchResponse.results;
  }
}
