import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PaymentSuccessfulScreen extends StatelessWidget {

  final String price, username, passName;
  PaymentSuccessfulScreen({
    @required this.price,
    @required this.username,
    @required this.passName
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 96,
            ),
            Center(
              child: Image.asset(
                "assets/images/qr.png",
                height: 240,
                width: 240
              )
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32
              ),
              child: Center(
                child: Text(
                  "QR Code Active",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32
              ),
              child: Text(
                "Payment of INR " + this.price + " succesful.",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32
              ),
              child: Text(
                this.passName + " active for " + this.username + " for the next 10 days.",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(
              height: 54,
            ),
            Center(
              child: CupertinoButton(
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontFamily: "Montserrat"
                  ),
                ),
                color: Colors.blue,
                onPressed: (){
                  Navigator.pop(context);
                }
              ),
            )
          ],
        ),
      )
    );
  }
}