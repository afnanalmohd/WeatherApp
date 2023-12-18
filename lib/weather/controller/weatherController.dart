import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../model/model.dart';
import '../service/menu_service.dart';

class WeatherController extends GetxController {
  final WeatherService service = WeatherService();
  final GetStorage getStorage = GetStorage();

  WeatherModel? weather;
  bool isLoading = false;

  @override
  void onInit() async {
    super.onInit();
    await syncData();
  }

  refreshData() async {
    await syncData();
  }

  syncData() async {
    try {
      isLoading = true;
      update();
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        final cachedWeather = getStorage.read('cachedWeather');

        if (cachedWeather != null) {
          weather = cachedWeather;

          update();
        }
      } else {
        await getAllWeather();
      }
    } finally {
      isLoading = false;
      update();
    }
  }

  getAllWeather() async {
    try {
      await service.getAllWeather(
        onDone: (value) {
          weather = value;
          getStorage.write('cachedWeather', weather);
          update();
        },
        onError: (String error) {
          final cachedWeather = getStorage.read('cachedWeather');
          if (cachedWeather != null) {
            weather = cachedWeather;
            update();
          }
        },
      );
    } finally {
      isLoading = false;
      update();
    }
  }
}
