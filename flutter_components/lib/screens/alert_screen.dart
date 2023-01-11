import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Text('Mostrar Alerta',
              style: TextStyle(fontSize: 16),
            ),
          ),
          onPressed: () {

          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}
