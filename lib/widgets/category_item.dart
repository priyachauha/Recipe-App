import 'package:flutter/material.dart';
import '../screens/Category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  CategoryItem(this.id, this.title, this.color);
  // const CategoryItem({super.key});
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/category-meals',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(15),
        // ignore: sort_child_properties_last
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
