import 'package:flutter/material.dart';
import 'package:meals/screens/categories.dart';
import 'package:meals/screens/meals.dart';

class TabsScreen extends StatefulWidget {
   const TabsScreen({super.key});

@override
State<TabsScreen> createState() {
   return _TabsScreenState();
   } 
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const  CategoriesScreen();
    var activePageTitle = 'categories';
   
   if(_selectedPageIndex == 1) {
     activePage = MealsScreen(title: 'Favorites', meals: [] );
     activePageTitle = 'Your favorites';
   }

    return Scaffold(
      appBar: AppBar(
        title: Text(),
      ),
      body: activePage ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.set_meal), label: 'categories',),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites',),
        ],
      ),
    );
  }
}