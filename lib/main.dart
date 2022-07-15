import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reflect/core/features/splash_screen/splash_screen.dart';
import 'package:reflect/utils/constants/router/router.dart';
import 'package:reflect/utils/constants/settings/asset_path.dart';
import 'package:reflect/utils/constants/settings/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Settings().colorPrimary,
        inputDecorationTheme:
            const InputDecorationTheme(border: OutlineInputBorder()),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Settings().colorPrimary, // background (button) color
            onPrimary: Settings().colorBlack,
            // foreground (text) color
          ),
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Settings().colorsYellow),
      ),
      builder: EasyLoading.init(),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const SplashScreen(),
    );
  }
}
