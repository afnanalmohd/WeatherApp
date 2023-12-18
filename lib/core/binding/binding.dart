import 'package:get/get.dart';
import '../../weather/controller/weatherController.dart';


class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(WeatherController());
  }
}
