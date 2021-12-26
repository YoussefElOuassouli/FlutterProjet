import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_screen/models/bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key, this.email, this.password}) : super(key: key);
  final String email;
  final String password;

  @override
  _MainPageState createState() => _MainPageState();
}

enum BottomIcons { Home, Favorite, Search, Account }

class _MainPageState extends State<MainPage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.Home
              ? Center(
                  child: Text(
                    "Hi " + widget.email + ", this is home page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Favorite
              ? Center(
                  child: Text(
                    "Hi " + widget.email + ", this is favorite page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Search
              ? Center(
                  child: Text(
                    "Hi " + widget.email + ", this is search page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Account
              ? Center(
                  child: Text(
                    "Hi " + widget.email + ", this is account page",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                      icons: EvaIcons.home,
                      text: "Home"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Favorite;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Favorite ? true : false,
                      icons: EvaIcons.heartOutline,
                      text: "Favorite"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Search;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Search ? true : false,
                      icons: EvaIcons.search,
                      text: "Search"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Account;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Account ? true : false,
                      icons: EvaIcons.personOutline,
                      text: "Account"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
