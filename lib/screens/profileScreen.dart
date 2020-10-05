import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'activeQr.dart';
import 'displayPasses.dart';

class ProfileScreen extends StatelessWidget {

  final String age, username;
  ProfileScreen({
    @required this.age,
    @required this.username
  });

  toUsername(String text){
    var temp = text.split(' ');
    for (var i = 0; i < temp.length; i++) {
      temp[i] = temp[i].toLowerCase();
    }
    return temp.join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 128,
            ),
            CircleAvatar(
              radius: 96,
              backgroundImage: AssetImage(
                "assets/images/profile.jpg"
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              this.username,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 32
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              toUsername(this.username) + "@veristel.org",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Age: " + age,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18
              ),
            ),
            SizedBox(
              height: 32,
            ),
            CupertinoButton(
              child: Text(
                "Active QR Code",
                style: TextStyle(
                  fontFamily: "Montserrat"
                ),
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => ActiveQrCodeScreen())
              ),
              color: Colors.blue,
            ),
            SizedBox(
              height: 8,
            ),
            CupertinoButton(
              child: Text(
                "See passes",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  color: Colors.blue
                ),
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => ListPasses(
                  username: this.username
                ))
              ),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}