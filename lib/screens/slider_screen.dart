import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          // ignore: todo
          // TODO adaptative dependiendo de la plataforma conserva su visualizacion ( Cupertino / Material)
          Slider.adaptive(
              inactiveColor: Colors.blueGrey,
              min: 0,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.primaryColor,
              // divisions: 10,
              onChanged: _check
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),

          Checkbox(
              value: _check,
              activeColor: AppTheme.primaryColor,
              onChanged: (value) {
                _check = value ?? true;
                setState(() {});
              }),

                    Switch(
              value: _check,
              activeColor: AppTheme.primaryColor,
              onChanged: (value) {
                _check = value;
                setState(() {});
              }),


          CheckboxListTile(
              title: const Text('Enable Resize'),
              value: _check,
              activeColor: AppTheme.primaryColor,
              onChanged: (value) {
                _check = value ?? true;
                setState(() {});
              }),


          SwitchListTile(
              title: const Text('Enable Resize'),
              value: _check,
              activeColor: AppTheme.primaryColor,
              onChanged: (value) {
                _check = value;
                setState(() {});
              }),


          const SizedBox(height: 200),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Image(
                  width: _sliderValue,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      'https://www.lavanguardia.com/files/article_main_microformat/uploads/2019/04/30/5fa51e5570e43.png')),
            ),
          )
        ],
      ),
    );
  }
}
