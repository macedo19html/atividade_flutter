import 'package:flutter/material.dart';
import 'package:jm_flutter/home_page.dart';
import 'package:jm_flutter/login_page.dart';
import 'login_page.dart';
import 'app_controller.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme
            ? Brightness.dark
            : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/':(context) => LoginPage(),
            '/home':(context) => HomePage(),
          },
        );
      }
    );
  }
}
