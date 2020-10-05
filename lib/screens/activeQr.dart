import 'package:flutter/material.dart';

class ActiveQrCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: EdgeInsets.only(
              left: 24
            ),
            child: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 32
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Image.asset(
              "assets/images/qr.png",
              height: 240,
              width: 240
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
                  "Active QR Code",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}