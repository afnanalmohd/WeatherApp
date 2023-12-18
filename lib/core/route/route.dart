import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../weather/screen/weather_screen.dart';
import '../binding/binding.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.weatherScreen,
      page: () => const WeatherScreen(),
      binding: Binding(),
    ),
  ];
}

class Routes {
  static const weatherScreen = '/weather_screen';
}
