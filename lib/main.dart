import 'package:flutter/material.dart';

void main() => runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: TestHomepage()));

class TestHomepage extends StatefulWidget {
  const TestHomepage({Key? key}) : super(key: key);

  @override
  State<TestHomepage> createState() => _TestHomepageState();
}

class _TestHomepageState extends State<TestHomepage> {
  List angkaCenter = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SafeArea(
        child: Stack(children: [
          Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "Angka ${angkaCenter.map((e) => e.toString()).join("")}"),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(1);
                                  });
                                },
                                child: Text("1")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(2);
                                  });
                                },
                                child: Text("2")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(3);
                                  });
                                },
                                child: Text("3")),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(4);
                                  });
                                },
                                child: Text("4")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(5);
                                  });
                                },
                                child: Text("5")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(6);
                                  });
                                },
                                child: Text("6")),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(7);
                                  });
                                },
                                child: Text("7")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(8);
                                  });
                                },
                                child: Text("8")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(9);
                                  });
                                },
                                child: Text("9")),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(",");
                                  });
                                },
                                child: Text(",")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    angkaCenter.add(0);
                                  });
                                },
                                child: Text("0")),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (angkaCenter.isNotEmpty) {
                                      angkaCenter.removeLast();
                                    }
                                  });
                                },
                                child: Text("X")),
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 20, left: 5, right: 5),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  print(angkaCenter.map((e) => e.toString()).join(""));
                },
                child: Text("Jual BTC"),
              ),
            ),
          ))
        ]),
      )),
    );
  }
}
