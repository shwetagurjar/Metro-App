import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 54,
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.png'
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Metro App",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 28
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Version: 1.0.5",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 20
            ),
          ),
          SizedBox(
            height: 24,
          ),
          // Text(
          //   "Developer: Shweta Furjar",
          //   style: TextStyle(
          //     fontSize: 18,
          //     fontFamily: "Montserrat"
          //   )
          // ),
          Text(
            "© 2020 - 2021",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Montserrat"
            )
          )
        ],
      ),
    );
  }
}