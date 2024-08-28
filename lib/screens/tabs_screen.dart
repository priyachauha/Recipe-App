import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favourite_screen.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': const CategoriesScreen(), 'title': 'Khana Khajana'},
    {'page': const FavouriteScreen(), 'title': 'Your Favourites'},
  ].toList();

  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: Drawer(
        child: Text('This is a drawer!'),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.category,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.star,
            ),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}

// bottom: TabBar(
//               // ignore: prefer_const_literals_to_create_immutables
//               tabs: <Widget>[
//                 // ignore: prefer_const_constructors
//                 Tab(
//                   // ignore: prefer_const_constructors
//                   icon: Icon(
//                     Icons.category,
//                   ),
//                   text: 'Categories',
//                 ),
//                 // ignore: prefer_const_constructors
//                 Tab(
//                   icon: Icon(
//                     Icons.star,
//                   ),
//                   text: 'Favourites',
//                 ),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: <Widget>[
//               FavouriteScreen(),
//               CategoriesScreen(),
//             ],
//           )),