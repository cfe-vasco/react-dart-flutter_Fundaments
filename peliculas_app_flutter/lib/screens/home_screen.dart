import 'package:flutter/material.dart';
import 'package:peliculas_app_flutter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cine'),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {
              
            }, 
          )
        ],
      ),
      body: Column(
        children: const[
          CardSwiper()
          //TODO: listado de peliculas
        ],
      )
    );
  }
}