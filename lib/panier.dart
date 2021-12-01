import 'package:flutter/material.dart';
import 'package:workshop_sim4/wishlistinfo.dart';
import 'product_info.dart';

class Panier extends StatefulWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  PanierState createState() => PanierState();
}

class PanierState extends State<Panier> {

  //var
  final List<Game> games = const [
  const Game("assets/images/dmc5.jpg", "Devil May Cry 5", 200),
  const Game("assets/images/re8.jpg", "Resident Evil VIII", 200),
  const Game("assets/images/nfs.jpg", "Need For Speed Heat", 100),
  const Game("assets/images/rdr2.jpg", "Red Dead Redemption II", 150),
  const Game("assets/images/fifa.jpg", "FIFA 22", 100)
  ];

  //init
  @override
  void initState() {
    super.initState();
    //TO DO
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store ESPRIT"),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
        return Wishlistinfo(games[index].image, games[index].title, games[index].price);
      },)
    );
  }
}

//ENTITY
class Game {

final String image;
final String title;
final int price;

const Game(this.image, this.title, this.price);
}
