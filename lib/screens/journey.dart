import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'radialProgress.dart';

class JourneyInfo extends StatefulWidget {
  @override
  _JourneyInfoState createState() => _JourneyInfoState();
}

class _JourneyInfoState extends State<JourneyInfo> {

  List<String> trains = ["Train 301", "Train 402", "Train 504", "Train 139", "Train 205", "Train 272"];
  List<Widget> listOfTrains = List();
  
  setTrains(){
    trains.shuffle();
    for (var train in trains){
      var tempTile = ListTile(
        title: Text(
          train,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 18
          )
        ),
      );
      listOfTrains.add(tempTile);
    }
    setState(() {});
  }

  @override
  void initState() {
    setTrains();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 108,
              ),
              Center(
                child: Text(
                  "Your journey",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 24
                  )
                ),
              ),
              SizedBox(
                height: 54,
              ),
              Center(child: RadialProgress()),
              SizedBox(
                height: 64,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32
                ),
                child: Text(
                  "From: Khandala",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 24
                  )
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32
                ),
                child: Text(
                  "To: Lokhandwala",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 24
                  )
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12
                ),
                child: Text(
                  "Next Trains",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 32
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: listOfTrains,
              )
            ],
          ),
        ),
      )
    );
  }
}