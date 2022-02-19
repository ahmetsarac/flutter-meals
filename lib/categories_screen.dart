import 'package:flutter/material.dart';
import 'package:meals/category_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meals")),
      body: GridView(
        padding: const EdgeInsets.all(25.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((catData) {
          return CategoryItem(title: catData.title, color: catData.color);
        }).toList(),
      ),
    );
  }
}
