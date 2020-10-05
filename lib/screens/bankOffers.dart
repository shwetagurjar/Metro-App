import 'package:flutter/material.dart';

class BankOfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 32
                    ),
                  ),
                )
              ],
            ),
            Text(
              "Bank offers",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 24
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.08,
                child: Image.asset(
                  "assets/images/offer.jpg"
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Text(
                    "Pay using your SBI and ICICI Bank Credit or Debit Cards and avail 20% off.",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 18
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Text(
                    "Offer valid till 30th September 2020.",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 18
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.description
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Terms and conditions applied.",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 16,
                          decoration: TextDecoration.underline
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}