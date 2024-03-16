import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final String card;
  const Card(this.card);
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                        backgroundColor: Colors.yellow.withOpacity(0.75),
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
    );
  }
}
