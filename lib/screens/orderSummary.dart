import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'checkoutPage.dart';

class OrderSummary extends StatefulWidget {

  final String passName, price, username, validity;
  OrderSummary({
    @required this.passName,
    @required this.price,
    @required this.username,
    @required this.validity
  });

  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 54,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 24
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      size: 32,
                      color: Colors.black
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 24
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8
                    ),
                    child: Text(
                      "Order Summary",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/checkout.png"
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8
                    ),
                    child: Text(
                      "Order: 1 x " + widget.passName,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 18
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8
                    ),
                    child: Text(
                      "Pass validity: " + widget.validity + " days",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8
                    ),
                    child: Text(
                      "Price: INR " + widget.price,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: CupertinoButton(
                child: Text(
                  "Proceed to payment",
                  style: TextStyle(
                    fontFamily: "Montserrat"
                  ),
                ),
                color: Colors.blue,
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => CheckOutPage(
                      price: widget.price,
                      passName: widget.passName,
                      username: widget.username
                    )
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}