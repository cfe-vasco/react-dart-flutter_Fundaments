import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier{
  moviesProvider() {
    print('MoviesProvider incializado');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async{
    print('getOnDisplayMovies');
  }
}
