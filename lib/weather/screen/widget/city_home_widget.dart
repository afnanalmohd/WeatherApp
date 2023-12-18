import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/weatherController.dart';
import 'city_widget.dart';

class CityHomeWidget extends StatelessWidget {
  const CityHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeatherController().syncData();

    return GetBuilder<WeatherController>(
      builder: (controller) {
        if (controller.isLoading) {
          return const CircularProgressIndicator();
        } else if (controller.weather == null ||
            controller.weather!.location.name.isEmpty) {
          final cachedWeather = controller.getStorage.read('cachedWeather');

          if (cachedWeather != null) {
            return CityWidget();
          } else {
            return const Text("No internet and no cached data");
          }
        } else {
          return CityWidget();
        }
      },
    );
  }
}
