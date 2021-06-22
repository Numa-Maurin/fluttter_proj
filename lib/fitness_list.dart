import 'package:flutter/material.dart';
import 'package:flutter_app_fitness/exercice_page1.dart';
import 'package:flutter_app_fitness/exercice_page2.dart';
import 'exercice_page1.dart';
import 'exercice_page2.dart';

class FitnessList extends StatefulWidget {
  var row;
  FitnessList({this.row});

  @override
  _FitnessListState createState() => _FitnessListState();
}

class _FitnessListState extends State<FitnessList> {
  @override
  Widget build(BuildContext context) {
    int items = 3;

    Widget gymImage = Container(
      height: 160,
      child: Image.asset("images/gym.png"),
    );

    Widget yogaImage = Container(
      height: 160,
      child: Image.asset("images/yoga.png"),
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
                      Navigator.of(context).pushNamed(
                          index == 1 ? ExercicePage2.tag : ExercicePage1.tag);
                    },
                    child: Card(
                      color: Colors.grey[400],
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              "Exercice",
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
                      Navigator.of(context).pushNamed(
                          index == 1 ? ExercicePage2.tag : ExercicePage1.tag);
                    },
                    child: reverse ? gymImage : yogaImage,
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
