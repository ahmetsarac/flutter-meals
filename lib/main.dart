import 'package:flutter/material.dart';
import 'package:meals/categories_screen.dart';
import 'package:meals/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ThemeData theme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    fontFamily: 'Raleway',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        secondary: Colors.amber,
      )),
      home: const CategoriesScreen(),
      routes: {
        '/category-meals': (context) => CategoryMealsScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals"),
      ),
      body: const Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
