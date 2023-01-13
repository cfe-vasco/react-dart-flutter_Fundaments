import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas_app_flutter/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey_ = 'fc717f1e907ebd61dcb318d2949c503c';
  final String _baseURL = 'api.themoviedb.org';
  final String _lenguaje = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  MoviesProvider() {
    print('MoviesProvider incializado');
    getOnDisplayMovies();
    getPopularMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseURL, '3/movie/now_playing', {
      'api_key': _apiKey_,
      'language': _lenguaje,
      'page': '1',
    });
    final response = await http.get(url);
    final nowPlayigResponse = NowPlayingResponse.fromJson(response.body);

    onDisplayMovies = nowPlayigResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    var url = Uri.https(_baseURL, '3/movie/popular', {
      'api_key': _apiKey_,
      'language': _lenguaje,
      'page': '1',
    });
    final response = await http.get(url);
    final popularResponse = PopularResponse.fromJson(response.body);

    popularMovies = [...popularMovies, ...popularResponse.results];
    notifyListeners();
  }
}
