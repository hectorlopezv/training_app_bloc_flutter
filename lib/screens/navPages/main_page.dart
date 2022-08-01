import 'package:flutter/material.dart';
import 'package:travel_app_bloc/screens/navPages/bar_item_page.dart';
import 'package:travel_app_bloc/screens/navPages/home_page.dart';
import 'package:travel_app_bloc/screens/navPages/my_page.dart';
import 'package:travel_app_bloc/screens/navPages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List pages = [
    HomePage(),
    BarItemPage(),
    MyPage(),
    SearchPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Bar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "My",
          ),
        ],
      ),
      body: pages[0],
    );
  }
}
