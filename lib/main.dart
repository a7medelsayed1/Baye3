
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iti_project/logic/controllers/theme_controller.dart';
import 'package:iti_project/routes/routes.dart';
import 'package:iti_project/utils/my_string.dart';
import 'package:iti_project/utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'iti shop',
      debugShowCheckedModeBanner: false,
      locale: Locale(GetStorage().read<String>('lang').toString()),
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      initialRoute:
      // FirebaseAuth.instance.currentUser != null ||
      //         GetStorage().read<bool>('auth') == true
      //     ? AppRoutes.mainSreen
      //     :
      //
         AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}
