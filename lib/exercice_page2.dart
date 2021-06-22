import 'package:flutter/material.dart';

class ExercicePage2 extends StatefulWidget {
  ExercicePage2({Key? key}) : super(key: UniqueKey());

  static const tag = "exercice_page2";

  @override
  _ExercicePage2State createState() => _ExercicePage2State();
}

class _ExercicePage2State extends State<ExercicePage2> {
  Widget gymImage = Container(
    height: 160,
    child: Image.asset("images/gym.png"),
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
                  "Scéance de Musculation",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    gymImage,
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
                        Text("EXERCICES PROPOSÉS LORS DE CETTE SÉANCE :"),
                        Text(
                            "Développé couché : 4 séries de 10 répétitions. Développé incliné : 4 séries de 10 répétitions. Ecartés à la poulie vis-à-vis : 4 séries de 15 répétitions. Dips : 4 séries de 10 répétitions. Barre au front : 4 séries de 10 répétitions. Extensions triceps à la poulie haute : 4 séries de 15 répétitions."),
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
