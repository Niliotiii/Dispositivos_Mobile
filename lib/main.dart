import 'package:flutter/material.dart';
import 'app/pages/login.dart';
import 'app/pages/integrado.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case '/main':
                return Main();
              case '/login':
                return Login();
              case '/integrado':
                return Integrado();
              default:
                return Login();
            }
          },
        );
      },
      initialRoute: '/login',
    );
  }
}
