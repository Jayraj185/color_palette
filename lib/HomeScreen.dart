import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List colore = [
    Colors.amber,
    Colors.amberAccent.shade100,
    Colors.purpleAccent.shade100,
    Colors.blueAccent.shade100,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.brown.shade300,
    Colors.indigoAccent,
    Colors.tealAccent.shade700,
    Colors.pinkAccent,
  ];
  int gen = 0;
  int gen2 = 1;
  int gen3 = 2;
  int gen4 = 3;
  int gen5 = 4;
  int gen6 = 5;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Color Palette"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Color Palette\n   Generator",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3BB3F9)
              ),
            ),
            SizedBox(height: 115,),
            Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                    color: colore[gen],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21)
                    )
                )
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[gen2],
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[gen3],
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[gen4],
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[gen5],
            ),
            Container(
              height: 60,
              width: 100,
                decoration: BoxDecoration(
                    color: colore[gen6],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21)
                    )
                )
            ),
            SizedBox(height: 60,),
            InkWell(
              onTap: (){
                var co = Random();
                setState(() {
                  gen = co.nextInt(10);
                  gen2 = co.nextInt(10);
                  gen3 = co.nextInt(10);
                  gen4 = co.nextInt(10);
                  gen5 = co.nextInt(10);
                  gen6 = co.nextInt(10);
                });
              },
              child: Container(
                height: 46,
                width: 215,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF3BB3F9,),width: 3)
                ),
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3BB3F9,)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
