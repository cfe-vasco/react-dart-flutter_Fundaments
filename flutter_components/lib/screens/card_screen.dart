import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Card Widget')),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        children: [
          Card(
            child: Column(
              children: const[
                ListTile(
                  leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
                  title: Text('Soy un titulo'),
                  subtitle: Text('Aliqua do id Lorem amet sunt ex eiusmod irure incididunt. Consectetur deserunt minim officia proident incididunt sunt cillum cupidatat. Eu esse sint eu ut nostrud. Excepteur id sint eu sunt incididunt est ullamco quis. Sunt fugiat anim aliqua elit dolor esse tempor proident sit.'),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}