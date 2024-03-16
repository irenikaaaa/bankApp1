import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  const Currency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      height: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.pinkAccent.withOpacity(0.5),
            Colors.indigo.withOpacity(0.8)
          ]),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.indigo,
                child: Icon(CupertinoIcons.money_dollar, size: 28),
              ),
              Text("dollar"),
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey,
          ),
          Text(
            'Today',
            style: TextStyle(
              color: Colors.grey.shade200,
            ),
          ),
          Container(
            width: 1,
            color: Colors.grey,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.arrowtriangle_up_fill,
                size: 15,
                color: Colors.green,
              ),
              Text(
                '125 %',
                style: TextStyle(
                  color: Colors.green,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
