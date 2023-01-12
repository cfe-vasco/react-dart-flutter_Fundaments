import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider(
                min: 50,
                max: 400,
                // Da las divisiones al Slider de valor en valor que se especifique
                // divisions: 10,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                },
              ),
              Image(
                image: const NetworkImage('https://static.wikia.nocookie.net/ficcion-sin-limites/images/8/88/DP.png/revision/latest?cb=20210217170751&path-prefix=es'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
              const SizedBox(height: 50,)
            ],
          ),
        ));
  }
}
