// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("images/image1.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Maruf Ahmed Robin", style: stylingFont("Jeju", 30)),
          Text(
            "Flutter Developer",
            style: stylingFont("JetBrainsMono", 22),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // height: 12,
            width: 150,
            child: Divider(
              thickness: 1,
              color: Colors.white,
              // height: 20,
            ),
          ),
          cardView("phone", "+8801705000023"),
          cardView("mail", "marufrobin5@gmail.com"),
          cardView("instagram", "marufrobin"),
          cardView("git", "marufrobin"),
          cardView("linkedin", "linkedin.com/in/marufrobin/"),
        ],
      ),
    );
  }
}

Widget cardView(String iconeName, String userName) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    color: Color(0xff1B1B1B),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        leading: SvgPicture.asset(
          'images/$iconeName.svg',
          height: 24,
          width: 24,
        ),
        title: Text(
          "$userName",
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontFamily: "JetBrainsMono",
          ),
        ),
      ),
    ),
  );
}

TextStyle stylingFont(String fontName, double fSzie) {
  return TextStyle(
    fontFamily: "$fontName",
    fontSize: fSzie,
    color: Colors.white,
  );
}
