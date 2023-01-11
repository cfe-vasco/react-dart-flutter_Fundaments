import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10, 
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'), 
            placeholder: AssetImage('assets/jar-loading.gif'),
          )
        ]
      )
    );
  }
}
