import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';


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

        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Un hermoso paisaje', imageURL: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Un segundo hermoso paisaje', imageURL: 'https://www.superprof.co.uk/blog/wp-content/uploads/2018/02/landscape-photography-tutorials.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageURL: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',),
        ],
      )
    );
  }
}