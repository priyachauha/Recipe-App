// ignore: file_names
import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';

// ignore: use_key_in_widget_constructors
class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String id;
  // final String title;
  // CategoryMealScreen(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final cattitle = routeArgs['title'];
    final catid = routeArgs['id'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catid);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(cattitle!),
        ),
        // ignore: prefer_const_constructors
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: categoryMeal[index].id,
                title: categoryMeal[index].title,
                imageUrl: categoryMeal[index].imageUrl,
                duration: categoryMeal[index].duration,
                complexity: categoryMeal[index].complexity,
                affordability: categoryMeal[index].affordability);
          },
          itemCount: categoryMeal.length,
        ));
  }
}
