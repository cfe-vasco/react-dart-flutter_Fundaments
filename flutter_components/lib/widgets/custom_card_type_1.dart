import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Aliqua do id Lorem amet sunt ex eiusmod irure incididunt. Consectetur deserunt minim officia proident incididunt sunt cillum cupidatat. Eu esse sint eu ut nostrud. Excepteur id sint eu sunt incididunt est ullamco quis. Sunt fugiat anim aliqua elit dolor esse tempor proident sit.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar')
                ),
                
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'), 

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
