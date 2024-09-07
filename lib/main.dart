import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const purple = 0xFF9395D3;
const lightPurple = 0XFFD6D7EF;

void main() {
  runApp(const PagesNavigator());
}

class PagesNavigator extends StatelessWidget {
  const PagesNavigator({super.key});
  @override
  Widget build(BuildContext context) {
    return EditTaskPage();
  }
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
          backgroundColor: const Color(purple),
        ),
        backgroundColor: const Color(lightPurple),
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
                  style: TextStyle(fontSize: 14, color: Color(purple)),
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
                    style: TextStyle(fontSize: 14, color: Color(purple)))
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
                    backgroundColor: MaterialStatePropertyAll(Color(purple)),
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
                Text(title, style: const TextStyle(color: Color(purple))),
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

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {} // TODO OnPressed2
              ,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            "Add Task",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(purple),
        ),
        backgroundColor: Color(lightPurple),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Title"),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Detail"),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "ADD",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(purple)),
                  fixedSize: MaterialStatePropertyAll(Size(386, 65)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EditTaskPage extends StatelessWidget {
  const EditTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {} // TODO OnPressed2
              ,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            "Edit Task",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(purple),
        ),
        backgroundColor: Color(lightPurple),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Title"),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Detail"),
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2.5,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Update",
                          style: TextStyle(color: Colors.white,),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color(purple)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2.5,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color(purple)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
