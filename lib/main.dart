import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reflect/core/features/splash_screen/splash_screen.dart';
import 'package:reflect/utils/constants/router/router.dart';
import 'package:reflect/utils/constants/settings/asset_path.dart';
import 'package:reflect/utils/constants/settings/settings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
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
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const SplashScreen(),
      );
    });
  }
}
