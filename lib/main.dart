import 'package:flutter/material.dart';
import './screens/Category_meal_screen.dart';
import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khana Khajana',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(secondary: Colors.amber),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: prefer_const_constructors
              bodySmall: TextStyle(
                color: const Color.fromRGBO(20, 51, 51, 1),
              ),
              // ignore: prefer_const_constructors
              bodyMedium: TextStyle(
                color: const Color.fromRGBO(20, 51, 51, 1),
              ),
              // ignore: prefer_const_constructors
              titleSmall: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ))),
      home: const TabScreen(),
      routes: {
        '/category-meals': (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
