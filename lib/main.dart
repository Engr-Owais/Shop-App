import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/core/extensions/app_extensions.dart';
import 'product/manager/connectivity_manager.dart';
import 'features/common/splash/view/splash_view.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => ConnectivityManager(),
            )
          ],
          child: const MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  static const String path = '/';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: NavigationService.navigatorKey,
        onGenerateRoute: NavigationRoute.generateRoute,
        title: 'Shop App',
        debugShowCheckedModeBanner: false,
        theme: _theme(context),
        home: const SplashView(),
      );

  ThemeData _theme(BuildContext context) => ThemeData(
        primaryColor: context.primaryColor,
        scaffoldBackgroundColor: context.background,
        fontFamily: "Avenir",
      );
}
