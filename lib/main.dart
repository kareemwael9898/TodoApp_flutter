import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TODO App",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            SvgPicture.asset(
              "assets/images/Calendar.svg",
              height: 60,
            ),
          ],
          backgroundColor: const Color(0XFF9395D3),
        ),
        backgroundColor: const Color(0XFFD6D7EF),
        bottomNavigationBar: NavigationBar(
          destinations: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/Playlist.svg",
                  width: 30,
                ),
                Text(
                  "All",
                  style: TextStyle(fontSize: 14, color: Color(0XFF9395D3)),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/Tick.svg",
                  width: 30,
                ),
                Text("Completed",
                    style: TextStyle(fontSize: 14, color: Color(0XFF9395D3)))
              ],
            ),
          ],
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                for (var i = 0; i < 8; i++)
                  todoItem(title: "Kareem", subTitle: "Wael")
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: IconButton(
                  onPressed: () {}, // TODO OnPressed
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0XFF9395D3)),
                    fixedSize: MaterialStatePropertyAll(Size(70, 70)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget todoItem({required String title, required String subTitle}) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Color(0XFF9395D3))),
                Text(subTitle)
              ],
            ),
          ),
          Row(
            children: [
              SvgPicture.asset("assets/images/Pencil.svg", height: 25),
              SvgPicture.asset("assets/images/Trash.svg", height: 25),
              SvgPicture.asset("assets/images/CheckCircle.svg", height: 25),
            ],
          )
        ],
      ),
    ),
  );
}
