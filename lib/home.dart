import 'package:flutter/material.dart';
import 'package:flutter_application/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = false;
  bool isFemale = false;
  double height = 170;
  int age = 21;
  int weight = 91;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151928),
      appBar: AppBar(
        backgroundColor: const Color(0xff1d1e34),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontFamily: 'font-Playwrite',
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                        isFemale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isMale
                            ? const Color(0xffe73c66)
                            : const Color(0xff1d1e34),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.male, size: 100, color: Colors.white),
                          SizedBox(height: 10),
                          Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                        isFemale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isFemale
                            ? const Color(0xffe73c66)
                            : const Color(0xff1d1e34),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.female, size: 100, color: Colors.white),
                          SizedBox(height: 10),
                          Text(
                            "Female",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xff1d1e34),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 180,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toStringAsFixed(0),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(color: Colors.grey, fontSize: 25),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: const Color(0xffe73c66),
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff1d1e34),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              heroTag: "agePlus",
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: const Icon(Icons.add, color: Colors.white),
                            ),
                            const SizedBox(width: 20),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 0) age--;
                                });
                              },
                              heroTag: "ageMinus",
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff1d1e34),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        Text(
                          "$weight",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: "weightPlus",
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: const Icon(Icons.add, color: Colors.white),
                            ),
                            const SizedBox(width: 20),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) weight--;
                                });
                              },
                              heroTag: "weightMinus",
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffe73c66),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  double bmi = weight / ((height / 100) * (height / 100));
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ResultPage(bmi: bmi);
                      },
                    ),
                  );
                },
                child: const Text(
                  "Calculate",
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
