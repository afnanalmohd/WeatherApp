import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/route/route.dart';
import 'core/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GetMaterialApp(
        title: 'cashing data with git storage ',
        debugShowCheckedModeBanner: false,
        theme: ThemeApp.lightTheme,
        themeMode: ThemeMode.light,
        getPages: AppRoutes.routes,
        initialRoute: Routes.weatherScreen,
      ),
    );
  }
}
