import 'package:bankingapp/additional_features.dart';
import 'package:bankingapp/exchange_rate .dart';
import 'package:bankingapp/new_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(26, 29, 33, 1),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: <Widget>[
              const Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'My bank',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(height: 25),
              Stack(
                children: [
                  Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()..rotateZ(-10 * 3.1415 / 180),
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.pinkAccent.withOpacity(0.5),
                              Colors.indigo.withOpacity(0.8)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(38)),
                    ),
                  ),
                  Container(
                    height: 220,
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.pinkAccent.withOpacity(0.5),
                            Colors.indigo.withOpacity(0.8)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(38)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Mastercard Icon
                        SizedBox(
                          width: 30,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor:
                                      Colors.yellow.withOpacity(0.75),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.red.withOpacity(0.75),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "card name",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        const Text(
                          "Master card",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "8990 9090 **** **** 9090",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "exp date",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "24/27",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "cvv",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "093",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 44,
              ),
              const Text(
                "Send money",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 75,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Icon(CupertinoIcons.add),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("add")
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const UserAvatar(id: 1, name: 'Eda'),
                    const SizedBox(
                      width: 16,
                    ),
                    const UserAvatar(id: 2, name: 'Sanya'),
                    const SizedBox(
                      width: 16,
                    ),
                    const UserAvatar(id: 3, name: 'Krystyna'),
                    const SizedBox(
                      width: 16,
                    ),
                    const UserAvatar(id: 4, name: 'Ksenia'),
                    const SizedBox(
                      width: 16,
                    ),
                    const UserAvatar(id: 1, name: 'Olia'),
                    const SizedBox(
                      width: 16,
                    ),
                    const UserAvatar(id: 3, name: ' Marta'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Missing",
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    height: 40,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton<int>(
                      value: 0,
                      underline: Container(), //забрати підклеслення
                      items: const [
                        DropdownMenuItem(
                          value: 0,
                          child: Text('Today'),
                        ),
                      ],
                      onChanged: (val) {},
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Currency(),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AdditionalFeatures(
                          color: Colors.pinkAccent.withOpacity(0.5),
                          icon: const Icon(CupertinoIcons.train_style_two,
                              size: 30),
                          text: "train"),
                      const SizedBox(
                        width: 30,
                      ),
                      AdditionalFeatures(
                          color: Colors.pinkAccent.withOpacity(0.6),
                          icon: const Icon(CupertinoIcons.car, size: 30),
                          text: "car"),
                      const SizedBox(
                        width: 30,
                      ),
                      AdditionalFeatures(
                          color: Colors.indigo.withOpacity(0.7),
                          icon: const Icon(CupertinoIcons.heart_fill, size: 30),
                          text: "charity"),
                      const SizedBox(
                        width: 30,
                      ),
                      AdditionalFeatures(
                          color: Colors.indigo.withOpacity(0.8),
                          icon: const Icon(CupertinoIcons.cart, size: 30),
                          text: "market"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      children: [
                        AdditionalFeatures(
                            color: Colors.pinkAccent.withOpacity(0.5),
                            icon: const Icon(CupertinoIcons.money_dollar,
                                size: 30),
                            text: "credit"),
                        const SizedBox(
                          width: 30,
                        ),
                        AdditionalFeatures(
                            color: Colors.pinkAccent.withOpacity(0.6),
                            icon: const Icon(CupertinoIcons.add, size: 30),
                            text: "add"),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Colors.black),
        child: BottomNavigationBar(
          fixedColor: Colors.pink,
          backgroundColor: Colors.pink,
          currentIndex: 2,
          iconSize: 28,
          unselectedItemColor: Colors.indigo,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'df'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'notification'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          ],
        ),
      ),
    );
  }
}
