import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/PERSONAL.dart';

void main() {
  runApp(MaterialApp(
      title: "Belajar Flutter Application",
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => HomePage(),
        '/PersonalPage': (BuildContext context) => PersonalPage(),
      }));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              // Tambahkan agar tidak ada yang tertutup
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFF003478),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(
                                      20), // Atur padding di semua sisi
                                  child: Text(
                                    "Good Morning",
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 21),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                // ignore: deprecated_member_use
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.search, color: Colors.black54),
                              SizedBox(width: 80),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Find your task",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 23, vertical: 50),
                          child: Text("Category",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Serif",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80)
                ],
              ),
            ),
            Positioned(
              top: 300,
              left: 15,
              child: Wrap(
                // direction: Axis.vertical,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/PersonalPage');
                    },
                    child: CategoryCard(
                      backgroundColor: const Color.fromRGBO(255, 99, 99, 1),
                      icon: Icons.person,
                      text: "Personal",
                      taskCount: "10 Task",
                    ),
                  ),
                  SizedBox(width: 40),
                  CategoryCard(
                    backgroundColor: const Color.fromRGBO(42, 141, 255, 1),
                    icon: Icons.badge,
                    text: "Work",
                    taskCount: "7 Task",
                  ),
                ],
              ),
            ),
            Container(
              child: Positioned(
                top: 800,
                left: 15,
                child: Wrap(
                  // direction: Axis.vertical,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/PersonalPage');
                      },
                      child: CategoryCard(
                        backgroundColor: const Color.fromRGBO(255, 99, 99, 1),
                        icon: Icons.person,
                        text: "Personal",
                        taskCount: "10 Task",
                      ),
                    ),
                    SizedBox(width: 40),
                    CategoryCard(
                      backgroundColor: const Color.fromRGBO(42, 141, 255, 1),
                      icon: Icons.badge,
                      text: "Work",
                      taskCount: "7 Task",
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {required this.backgroundColor,
      required this.icon,
      required this.text,
      required this.taskCount});

  final Color backgroundColor;
  final IconData icon;
  final String text;
  final String taskCount;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.topLeft, // Posisi di kiri atas
        child: SizedBox(
          width: 150,
          height: 170,
          child: Card(
            color: backgroundColor,
            child: Align(
              alignment: Alignment.centerLeft, // Mepet kiri
              child: Padding(
                padding: EdgeInsets.only(left: 10), // Jarak dari kiri
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Biar teks & ikon sejajar kiri
                  children: <Widget>[
                    Icon(icon, size: 30.0, color: Colors.white),
                    SizedBox(height: 5),
                    Text(
                      text,
                      textAlign: TextAlign.left, // Teks sejajar kiri
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      taskCount,
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
