import 'package:cashing/weather/screen/widget/city_widget.dart';
import 'package:flutter/material.dart';
import '../../core/constant/app_image.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImage.backgroundImage,
            height: size.height / 1,
            width: size.width / 1,
            fit: BoxFit.cover,
          ),
          Center(child: CityWidget()),
        ],
      ),
    );
  }
}
