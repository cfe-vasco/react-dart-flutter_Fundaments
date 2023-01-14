import 'package:flutter/material.dart';
import 'package:peliculas_app_flutter/providers/movies_provider.dart';
import 'package:peliculas_app_flutter/search/search_delegate.dart';
import 'package:peliculas_app_flutter/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    print(moviesProvider.onDisplayMovies);

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Peliculas en cine')),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () => showSearch(
                context: context, 
                delegate: MovieSearchDelegate(),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //*Tarjetas principales
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              //*Slider de peliculas
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Popular',
                onNextPage: () => moviesProvider.getPopularMovies(),
              ),
            ],
          ),
        ));
  }
}
