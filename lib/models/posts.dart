import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatelessWidget {
  final String name;
  final String userImage;
  final String userPost;
  const Posts(
      {super.key,
      required this.name,
      required this.userImage,
      required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(userImage),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //post username
                    Text(name),
                  ],
                ),
                Icon(FontAwesomeIcons.ellipsisVertical),
              ],
            ),
          ),
          Container(
            height: 400,
            // color: Colors.grey[300],
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(userPost),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/heart.png",
                        width: 20,
                      ),
                    ),
                    // Icon(Icons.favorite_border_outlined),

                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/chat.png",
                        width: 20,
                      ),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/send.png",
                        width: 20,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/saved.png",
                    width: 20,
                  ),
                ),
              ],
            ),
          ),

          //liked by
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text("Liked by"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("and"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "others",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //caption
          Padding(
            padding: EdgeInsets.only(top: 8.0, left: 8.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  WidgetSpan(
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  TextSpan(text: "this is for demo purpose"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
