import 'package:flutter/material.dart';

class AdditionalFeatures extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String text;
  const AdditionalFeatures(
      {super.key, required this.color, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: color,
                  child: icon,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
