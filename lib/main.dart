import 'package:flutter/material.dart';
import 'app/pages/home.dart';
import 'app/pages/book-details.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        if (settings.name == '/bookDetails') {
          final BookDetails args = settings.arguments as BookDetails;

          return MaterialPageRoute(
            builder: (context) => BookDetails(
              book: args.book,
              releaseDate: args.releaseDate,
              coverImageUrl: args.coverImageUrl,
              synopsis: args.synopsis,
              author: args.author,
              authorBiography: args.authorBiography,
              publisher: args.publisher,
            ),
          );
        }
        // Define as outras rotas como antes
        return MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case '/main':
                return Main();
              case '/home':
                return Home();
              default:
                return Home();
            }
          },
        );
      },
      initialRoute: '/home',
    );
  }
}
