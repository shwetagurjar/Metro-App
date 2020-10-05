import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'bankOffers.dart';
import 'displayPasses.dart';

class HomeScreen extends StatefulWidget {

  final String username;
  final int age;

  HomeScreen({
    @required this.username,
    @required this.age
  });

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController fromDestinationController = TextEditingController();
  TextEditingController toDestinationController = TextEditingController();

  FocusNode fromFocusNode = FocusNode();
  FocusNode toFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 112,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 32
              ),
              child: TextFormField(
                controller: fromDestinationController,
                focusNode: fromFocusNode,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Raleway"
                  ),
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontFamily: "Raleway"
                  ),
                  suffixStyle: TextStyle(
                    color: Colors.blue
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  hintText: "For eg. Khandaala",
                  labelText: "From"
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                onFieldSubmitted: (val){
                },
                onEditingComplete: (){
                  fromFocusNode.unfocus();
                  FocusScope.of(context).requestFocus(toFocusNode);
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 32
              ),
              child: TextFormField(
                controller: toDestinationController,
                focusNode: toFocusNode,
                decoration: InputDecoration(
                  suffixStyle: TextStyle(
                    color: Colors.blue,
                    fontFamily: "Raleway"
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Raleway"
                  ),
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontFamily: "Raleway"
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  hintText: "For eg. Khandaala",
                  labelText: "To"
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                onFieldSubmitted: (val){
                },
                onEditingComplete: (){
                  toFocusNode.unfocus();
                  // FocusScope.of(context).requestFocus(toFocusNode);
                },
              ),
            ),
            SizedBox(
              height: 18,
            ),
            CupertinoButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.search
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Search metros"
                  ),
                ],
              ),
              color: Colors.blue,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => ListPasses(
                    username: widget.username
                  ))
                );
              }
            ),
            SizedBox(
              height: 32,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => BankOfferPage()
                    )
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 4.6,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment.topLeft,
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.blue,
                        Colors.lightBlue
                      ]
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 28
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.payment,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Bank offers",
                              style: TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.white,
                                fontSize: 25
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 28
                        ),
                        child: Text(
                          "Pay using your SBI and ICICI Bank Credit / Debit Cards and avail 20% off.",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 28
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.event,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Offer valid till 10th October",
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                // some new screen here?
                              },
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                  // size: 32,
                                ),
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  )
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ListPasses(
                        username: widget.username,
                      )
                    )
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 4.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment.topLeft,
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.indigoAccent,
                        Colors.blue
                      ]
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 28
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.inbox,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Active Passes",
                              style: TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.white,
                                fontSize: 25
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 28
                        ),
                        child: Text(
                          "See the validity of your active current passes. Get 30% off on renewing your pass early.",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 28
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.date_range,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Passes expiring soon",
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                // some new screen here?
                              },
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                  // size: 32,
                                ),
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  )
                ),
              ),
            ),
            SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}