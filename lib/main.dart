import 'package:flutter/material.dart';
import 'package:formulario/src/app_routing/routing.dart';
import 'package:formulario/src/post/screen.dart';
import 'package:formulario/src/splash/screens/screen_bindings.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: Color(0xFF151026),
        )),
        debugShowCheckedModeBanner: false,
        home: PostScreen(),
        initialBinding: SplashScreenBindings(),
        onGenerateRoute: AppRouting.onGenerateRoute);
  }
}
