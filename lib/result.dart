// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application/home.dart';

class ResultPage extends StatefulWidget {
  final double bmi;
  const ResultPage({super.key, required this.bmi});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151928),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffe73c66),
        title: Text(
          "Result Score",
          style: TextStyle(
            fontFamily: "font-Playwrite",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Overweight",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      widget.bmi.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff1d1e34),
                borderRadius: BorderRadius.circular(18),
              ),
              height: 500,
              width: double.infinity,
            ),
            SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffe73c66),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    (context),
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
