import 'package:flutter/material.dart';
import 'package:peliculas_app_flutter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Peliculas en cine')),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              //*Tarjetas principales
              CardSwiper(),

              //*Slider de peliculas
              MovieSlider(),
              
            ],
          ),
        ));
  }
}
