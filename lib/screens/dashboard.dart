import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'homeScreen.dart';
import 'profileScreen.dart';
import 'journey.dart';
import 'info.dart';

class DashboardScreen extends StatefulWidget {

  final String username;
  final int age;

  DashboardScreen({
    @required this.username,
    @required this.age
  });

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with SingleTickerProviderStateMixin{

  TabController _controller;
  String appBarTitle = 'Dashboard';

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            appBarTitle,
            style: TextStyle(
              fontFamily: "Raleway",
              color: Colors.black
            ),
          ),
        ),
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              HomeScreen(
                username: widget.username,
                age: widget.age
              ),
              JourneyInfo(),
              ProfileScreen(
                age: widget.age.toString(),
                username: widget.username
              ),
              InfoPage()
            ]
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: "Raleway"
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.directions_subway
                ),
                title: Text(
                  'Journey Info',
                  style: TextStyle(
                    fontFamily: "Raleway"
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle
                ),
                title: Text(
                  'Account',
                  style: TextStyle(
                    fontFamily: "Raleway"
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_outline
                ),
                title: Text(
                  'Info',
                  style: TextStyle(
                    fontFamily: "Raleway"
                  ),
                ),
              )
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _controller.index,
            onTap: (int _index){
              var tempTitle = '';
              switch(_index) {
                case 0:
                  tempTitle = "Dashboard";
                break;
                case 1:
                  tempTitle = "Journey Info";
                break;
                case 2:
                  tempTitle = "Account Info";
                break;
                case 3:
                  tempTitle = "App Info";
                break;
                default:
              }
              setState(() {
                _controller.index = _index;
                appBarTitle = tempTitle;
              });
            },
            selectedItemColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}