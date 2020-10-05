import 'package:flutter/material.dart';
import 'orderSummary.dart';

class ListPasses extends StatelessWidget {

  final String username;
  ListPasses({
    @required this.username
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 52,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8
                    ),
                    child: Icon(
                      Icons.chevron_left
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 52
                  ),
                  child: Text(
                    "Metro Passes",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 24
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 52
                  ),
                  child: Text(
                    "Choose a pass for your upcoming journeys.",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 16
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 45
                  ),
                  child: Text(
                    "15 days validity",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            PassTicket(
              passName: "General Pass",
              price: "300",
              username: this.username,
              validity: "15"
            ),
            PassTicket(
              passName: "Elders Pass",
              price: "220",
              username: this.username,
              validity: "15"
            ),
            PassTicket(
              passName: "Students Pass",
              price: "240",
              username: this.username,
              validity: "15"
            ),
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 45
                  ),
                  child: Text(
                    "1 month validity",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            PassTicket(
              passName: "General Pass",
              price: "540",
              username: this.username,
              validity: "30"
            ),
            PassTicket(
              passName: "Elders Pass",
              price: "380",
              username: this.username,
              validity: "30"
            ),
            PassTicket(
              passName: "Students Pass",
              price: "420",
              username: this.username,
              validity: "30"
            )
          ],
        ),
      ),
    );
  }
}

class PassTicket extends StatelessWidget {
  
  final String passName, price, username, validity;
  PassTicket({
    @required this.passName,
    @required this.price,
    @required this.username,
    @required this.validity
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => OrderSummary(
                passName: this.passName,
                price: this.price,
                username: this.username,
                validity: this.validity,
              )
            )
          );
        },
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.black,
        ),
        title: Text(
          this.passName,
          style: TextStyle(
            fontFamily: "Raleway",
            fontSize: 18
          ),
        ),
        subtitle: Text(
          "INR: " + this.price,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 15
          ),
        ),
      ),
    );
  }
}