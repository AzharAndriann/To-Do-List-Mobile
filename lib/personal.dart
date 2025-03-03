import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/main.dart';

void main() {
  runApp(
      new MaterialApp(home: new PersonalPage(), routes: <String, WidgetBuilder>{
    '/HomePage': (BuildContext context) => HomePage(),
  }));
}

class PersonalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
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
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/HomePage');
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 30.0,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                        child: Text("LET'S BE",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0)),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                        child: Text("PRODUCTIVE",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0)),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                        child: Text("TODAY",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80)
              ],
            ),
          ),
        ],
      ),
    );
    // scafflod/activity
  }
}
