import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_fitness/exercice_page1.dart';
import 'package:http/http.dart' as http;
import 'exercice_page1.dart';

class MealsList extends StatefulWidget {
  var row;
  MealsList({this.row});

  @override
  _MealsListState createState() => _MealsListState();
}

class _MealsListState extends State<MealsList> {
  @override
  Widget build(BuildContext context) {
    int items = 3;

    Widget salmonImage = Container(
      height: 150,
      child: Image.asset("images/food2.png"),
    );

    Widget bowlImage = Container(
      height: 160,
      child: Image.asset("images/food1.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 1 ? 240 : 330,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: index == items ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ExercicePage1.tag);
                    },
                    child: Card(
                      color: Colors.teal[100],
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              "Plat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(Icons.info),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ExercicePage1.tag);
                    },
                    child: reverse ? salmonImage : bowlImage,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
