import 'package:flutter/material.dart';

void main() {
  runApp(one());
}

class one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.amber), home: Home());
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Size screen;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "dklgjds",
            style: TextStyle(color: Colors.yellow, fontSize: 20),
          ),
        ),
        actions: [
          Container(padding: const EdgeInsets.all(5), child: Icon(Icons.home)),
          Padding(
              padding: const EdgeInsets.all(5), child: Icon(Icons.settings)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: screen.height * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                myContainer(text: "Car"),
                myContainer(text: "Apple"),
              ],
            ),
          ),
          Text(selected)
        ],
      ),
    );
  }

  String selected = "";

  Widget myContainer({required String text}) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = text;
        });
      },
      child: Container(
        height: 150,
        width: screen.width * 0.5,
        decoration: BoxDecoration(
            color: selected == text ? Colors.amber : Colors.grey[50],
            border: Border.all(width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text,
                  style: const TextStyle(color: Colors.black, fontSize: 22),
                ),
                Container(
                    alignment: Alignment.topRight,
                    child: const Icon(Icons.card_travel))
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Image.asset("assets/one.png"),
            ),
            Text("skljgd sdlngksdg ,sdjgsd g;sdpg KLNLDSF DLKGNASDG LON"),
            Text(
              "Price: 250 ETB",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
