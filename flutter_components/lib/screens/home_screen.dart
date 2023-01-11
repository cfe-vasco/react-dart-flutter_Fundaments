import 'package:flutter/material.dart';
import 'package:flutter_components/routes/app_reoutes.dart';
import 'package:flutter_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para este ejercicio se puede hacer creando una variable final o llamando por compleato a la clase AppRoutes
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Componentes en Flutter")),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const Listview1Screen()
                    // );
                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length
          )
        );
  }
}
