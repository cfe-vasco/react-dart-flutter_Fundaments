import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider(
                min: 50,
                max: 400,
                // Da las divisiones al Slider de valor en valor que se especifique
                // divisions: 10,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),

            // Checkbox(
            //   value: _sliderEnable,
            //   onChanged: (value) {
            //     _sliderEnable = value ?? true;
            //     setState(() {});
            //   },
            // ),

            // Switch(
            //     value: _sliderEnable,
            //     onChanged: (value) => setState(() {
            //           _sliderEnable = value;
            //         })),

            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value ?? true;
                    })),

            SwitchListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value;
                    })),
            
            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/death-battle-fanon-wiki-en-espanol/images/5/59/Fcf46f73f864493aaf959b732d1605ce.png/revision/latest?cb=20190821193916&path-prefix=es'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
