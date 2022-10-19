import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String text;
  final String storyImage;
  const Stories({super.key, required this.text, required this.storyImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(storyImage),
          backgroundColor: Colors.grey,
        ),
        SizedBox(
          height: 3,
        ),
        Text(text),
      ]),
    );
  }
}
