import 'package:flutter/material.dart';
import 'package:flutter_app_fitness/meals_list.dart';
import 'header.dart';
import 'categories.dart';
import 'fitness_list.dart';
import 'exercice_page1.dart';
import 'exercice_page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.amber[200],
        primaryColor: Colors.grey,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.amber[200]),
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.amber[200]),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.amber),
      ),
      home: Fitness(),
      routes: {
        ExercicePage1.tag: (_) => ExercicePage1(),
        ExercicePage2.tag: (_) => ExercicePage2(),
      },
    );
  }
}

class Fitness extends StatefulWidget {
  @override
  _FitnessState createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("FITNESS APP"),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.people))],
          ),
          Header(),
          Categories(),
          FitnessList(row: 1),
          MealsList(row: 2),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.home,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.sports_score),
                  color: Colors.white,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
