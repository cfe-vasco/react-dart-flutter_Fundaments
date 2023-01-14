import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas_app_flutter/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey_ = 'fc717f1e907ebd61dcb318d2949c503c';
  final String _baseURL = 'api.themoviedb.org';
  final String _lenguaje = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  int _popularPage = 0;

  MoviesProvider() {
    print('MoviesProvider incializado');
    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    var url = Uri.https(_baseURL, endpoint, {
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
}
