import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String name;
  final int id;
  const UserAvatar({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/images/img$id.png'),
        ),
        const SizedBox(height: 5),
        Text('$name')
      ],
    );
  }
}
