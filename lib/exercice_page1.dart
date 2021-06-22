import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future fetchCategories() async {
  var url = Uri.parse('https://wger.de/api/v2/exercisecategory/');
  var response = await http.get(url, headers: {
    'Authorization': 'Token 9662992af7318a47544c1fc059f3869e76989277'
  });
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load datas');
  }
}

class ExercicePage1 extends StatefulWidget {
  ExercicePage1({Key? key}) : super(key: UniqueKey());

  static const tag = "exercice_page1";
  var values = fetchCategories();

  @override
  _ExercicePage1State createState() => _ExercicePage1State();
}

class _ExercicePage1State extends State<ExercicePage1> {
  Widget gymImage = Container(
    height: 160,
    child: Image.asset("images/gym.png"),
  );

  Widget yogaImage = Container(
    height: 160,
    child: Image.asset("images/yoga.png"),
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: null,
            icon: CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 35,
                child: CircleAvatar(
                    backgroundImage: AssetImage("images/iconAvatar.png"),
                    radius: 30)),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text(
                  "Exercice",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Scéance de Yoga",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    yogaImage,
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          child: Text("Note :"),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star, color: Colors.white),
                            Icon(Icons.star, color: Colors.white)
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(45),
          ),
        ),
        onClosing: () {},
        builder: (context) {
          return ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(45),
            ),
            child: Container(
              width: size.width,
              color: Color.fromRGBO(240, 240, 240, 1),
              height: size.height / 1.8,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 28),
                        Text(
                            "Séance de Yoga courte du Matin accessible aux débutants. A pratiquer au saut du lit afin de bien commencer sa journée ! N'oubliez pas également de compléter votre pratique par des séances plus longues et variées !"),
                        SizedBox(height: 28),
                        Text("https://www.youtube.com/watch?v=881DUWoxJRs"),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
