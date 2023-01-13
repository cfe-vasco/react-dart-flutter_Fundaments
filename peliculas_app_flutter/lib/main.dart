
import 'package:flutter/material.dart';
import 'package:peliculas_app_flutter/providers/movies_provider.dart';
import 'package:peliculas_app_flutter/screens/screens.dart';
import 'package:peliculas_app_flutter/themes/app_theme.dart';
import 'package:provider/provider.dart';


void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false,)
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home':(_) => const HomeScreen(),
        'details':(_) => const DetailsScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}