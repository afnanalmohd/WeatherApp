import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_colors.dart';
import '../../controller/weatherController.dart';
import 'item_card.dart';

class CityWidget extends StatelessWidget {
   CityWidget({Key? key}) : super(key: key);

  final weatherController = Get.find<WeatherController>();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return GetBuilder<WeatherController>(builder: (controller) {
      if (controller.isLoading) {
        return const CircularProgressIndicator();
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // effect
            Container(
                height: 600,
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 2,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ],
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: const Icon(Icons.refresh, color: whiteColor),
                          onPressed: () {
                            weatherController.refreshData();
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${controller.weather?.location.name}',
                        style: textTheme.bodyLarge
                            ?.copyWith(color: whiteColor, fontSize: 20),
                      ),
                      Text(
                        ',${controller.weather?.location.country}',
                        style: textTheme.bodyLarge
                            ?.copyWith(color: whiteColor, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  Text(
                    '${controller.weather?.current.temperature}°C',
                    style: textTheme.headlineLarge?.copyWith(color: whiteColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${controller.weather?.current.weatherDescriptions[0]}',
                    style: textTheme.bodyLarge
                        ?.copyWith(color: whiteColor, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                      height: 200,
                      width: 500,
                      child: GridView.builder(
                        itemCount: 4,
                        itemBuilder: (_, int index) {
                          switch (index) {
                            case 0:
                              return ItemCardWidget(
                                icons: Icons.wind_power,
                                value:
                                    "${controller.weather?.current.windSpeed}",
                                color: Colors.blueAccent.withOpacity(0.1),
                              );
                            case 1:
                              return ItemCardWidget(
                                icons: Icons.present_to_all,
                                value:
                                    "${controller.weather?.current.pressure}",
                                color: Colors.blueAccent.withOpacity(0.1),
                              );
                            case 2:
                              return ItemCardWidget(
                                icons: Icons.heat_pump,
                                value:
                                    "${controller.weather?.current.humidity}",
                                color: Colors.blueAccent.withOpacity(0.1),
                              );
                            case 3:
                              return ItemCardWidget(
                                icons: Icons.person,
                                value:
                                    "${controller.weather?.current.feelslike}",
                                color: Colors.blueAccent.withOpacity(0.1),
                              );
                            default:
                              return const SizedBox.shrink();
                          }
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${controller.weather?.location.name} Date snd Time are  ${controller.weather?.location.localtime} ',
                        style: textTheme.bodyLarge
                            ?.copyWith(color: whiteColor, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'GMT Time is ${controller.weather?.current.observationTime}',
                        style: textTheme.bodyLarge
                            ?.copyWith(color: whiteColor, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ])),
          ],
        );
      }
    });
  }
}
