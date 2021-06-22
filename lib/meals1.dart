import 'package:flutter/material.dart';

class Meal1 extends StatefulWidget {
  static const tag = "meal1";

  @override
  _Meal1State createState() => _Meal1State();
}

class _Meal1State extends State<Meal1> {
  Widget food2 = Container(
    height: 160,
    child: Image.asset("images/food2.png"),
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
                  "Plat",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Salade & Saumon",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    food2,
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
                          "Recette",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 28),
                        Text(
                            "Etape 1 Laver les légumes. Couper les tomates cerises en deux. Émincer l'oignon en fines rondelles. Éplucher et couper l'avocat en tranches. L'arroser d'un peu de jus de citron. Etape 2Dans un bol, mélanger 6 CS d'huile d'olive avec 5 CS de jus de citron. Saler, poivrer.Etape 3 Dans les assiettes, disposer la salade, les tomates, le saumon grillé, l'avocat. Parsemer de graines de sésame et arroser de vinaigrette. Servir aussitôt."),
                        SizedBox(height: 28),
                        Text("Disponible sur notre site partenaire Marmiton"),
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
