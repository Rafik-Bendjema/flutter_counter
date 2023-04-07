import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Center(
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(124, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      counter.toString(),
                      style: TextStyle(fontSize: 40),
                    ),
                  )),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: BoxDecoration(
                color: Color.fromARGB(118, 155, 39, 176),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(100))),
          ),
          Expanded(
              child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: decrement,
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 40),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(118, 155, 39, 176),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ))),
                ),
                Container(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: reset,
                      child: Text(
                        "reset",
                        style: TextStyle(fontSize: 25),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(118, 155, 39, 176),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ))),
                ),
                Container(
                  width: 100,
                  height: 70,
                  child: ElevatedButton(
                      onPressed: increment,
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 40),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(118, 155, 39, 176),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ))),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
