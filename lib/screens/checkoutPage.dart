import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'paymentSuccessful.dart';

class CheckOutPage extends StatefulWidget {

  final String passName, price, username;
  CheckOutPage({
    @required this.passName,
    @required this.price,
    @required this.username
  });

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {

  TextEditingController cardController = TextEditingController();
  TextEditingController nameOnCardController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController expiryMonthYearController = TextEditingController();

  FocusNode cardFocusNode = FocusNode();
  FocusNode nameOnCardFocusNode = FocusNode();
  FocusNode cvvFocusNode = FocusNode();
  FocusNode expiryMonthYearFocusNode = FocusNode();

  var currTime;

  void printDate(param){
    print(param);
  }

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
                      "Payments Page",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10
                    ),
                    child: Text(
                      "We support the following cards for payment.",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 15
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/payments.png"
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      labelText: 'Name On Card',
                      labelStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.black
                      ),
                      hintText: widget.username,
                      hintStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.grey
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      )
                    ),
                    style: TextStyle(
                      fontFamily: "Montserrat"
                    ),
                    controller: nameOnCardController,
                    focusNode: nameOnCardFocusNode,
                    onEditingComplete: (){
                      nameOnCardFocusNode.unfocus();
                      FocusScope.of(context).requestFocus(cardFocusNode);
                    }
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      labelText: 'Card Number',
                      labelStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.black
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      hintText: 'xoxo xoxo xoxo xoxo',
                      hintStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.grey
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      )
                    ),
                    style: TextStyle(
                      fontFamily: "Montserrat"
                    ),
                    controller: cardController,
                    focusNode: cardFocusNode,
                    onSubmitted: (var text){
                      text = text.replaceAll(" ", '');
                      RegExp expression = RegExp(
                        r".{1,4}"
                      );
                      var matches = expression.allMatches(text).toList();
                      var l = matches.map((e) => e.group(0));
                      setState(() {
                        cardController.text = l.join(' ').toString();
                      });
                    },
                    onEditingComplete: (){
                      cardFocusNode.unfocus();
                      FocusScope.of(context).requestFocus(cvvFocusNode);
                    }
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      labelText: 'CVV',
                      labelStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.black
                      ),
                      hintText: 'xxx',
                      hintStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.grey
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      )
                    ),
                    style: TextStyle(
                      fontFamily: "Montserrat"
                    ),
                    obscureText: true,
                    controller: cvvController,
                    focusNode: cvvFocusNode,
                    onEditingComplete: (){
                      cvvFocusNode.unfocus();
                      FocusScope.of(context).requestFocus(
                        expiryMonthYearFocusNode
                      );
                    }
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      labelText: 'Expiry Month / Year',
                      labelStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.black
                      ),
                      hintText: 'mm/yyyy',
                      hintStyle: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.grey
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      )
                    ),
                    style: TextStyle(
                      fontFamily: "Montserrat"
                    ),
                    controller: expiryMonthYearController,
                    focusNode: expiryMonthYearFocusNode,
                    onEditingComplete: (){
                      expiryMonthYearFocusNode.unfocus();
                    }
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: CupertinoButton(
                color: Colors.blue,
                child: Text(
                  "Pay INR " + widget.price,
                  style: TextStyle(
                    fontFamily: "Montserrat"
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => PaymentSuccessfulScreen(
                        price: widget.price,
                        username: widget.username,
                        passName: widget.passName
                      )
                    )
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}