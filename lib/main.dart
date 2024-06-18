import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/counter.page.dart';
import 'package:my_flutter_app/pages/home.page.dart';
import 'package:my_flutter_app/pages/products.details.dart';
import 'package:my_flutter_app/pages/products.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        "/counter": (context) => const CounterPage(),
        "/products": (context) => const ProductsPage(),
        "/productDetails": (context) => ProductsDetails(
            productId: ModalRoute.of(context)!.settings.arguments as int),
      },
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 33,
          ),
          bodyMedium: TextStyle(
            fontSize: 22,
          ),
          bodySmall: TextStyle(
            fontSize: 18,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.deepPurple,
          size: 26,
        ),
        indicatorColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple,
        ),
      ),
    );
  }
}
