import 'dart:convert';
import 'package:http/http.dart';
import '../../../../core/service/http.dart';
import '../../core/constant/endpoint.dart';
import '../model/model.dart';

class WeatherService {
  getAllWeather({
    required Function(WeatherModel value) onDone,
    required Function(String value) onError,
  }) async {
    try {
      Response response = await Http.http.getRequest(
        endpoint: Endpoints.jeddah,
      );

      dynamic result = jsonDecode(response.body);
      WeatherModel res = WeatherModel.fromJson(result);
      onDone(res);
    } catch (e) {
      onError(e.toString());
    }
  }
}
