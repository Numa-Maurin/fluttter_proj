import 'package:flutter/material.dart';

class Meal2 extends StatefulWidget {
  static const tag = "Meal2";

  @override
  _Meal2State createState() => _Meal2State();
}

class _Meal2State extends State<Meal2> {
  Widget food1 = Container(
    height: 200,
    child: Image.asset("images/food1.png"),
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
                  "POKÉ BOWL",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    food1,
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
                            "1. Cuire le riz selon les indications du sachet. Assaisonner avec la préparation au vinaigre, couvrir le plat d’un linge humide et laisser reposer le tout à température ambiante. 2. Couper la mangue en petits cubes. Couper l'avocat en dés et l'arroser avec un filet de jus de citron vert pour éviter le noircissement. Couper le concombre en demie rondelles. 3. Couper le saumon en dés, le déposer dans un petit saladier et l'arroser d'huile de sésame, de sauce soja et ajouter une pointe de piment. Mélanger. 4. Mettre le riz dans les bols, puis dresser harmonieusement avec les autres ingrédients. Enfin, décorer avec les graines de sésame et saupoudrer de coriandre et de ciboulette."),
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
