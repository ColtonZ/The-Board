import 'package:flutter/material.dart';
import '../backend/themes.dart';

class AccountPage extends StatefulWidget {
  @override
  //initialises the tannoy page state
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  Widget build(BuildContext context) {
    //checks if the user is signed in, if not, they are signed in. If they are, the page is loaded

    return
        //returns the custom app bar with the tannoy page title
        //builds the body
        Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Account Name:",
            style: titleStyle,
          ),
          SizedBox(
            height: 5,
          ),
          //creates a widget with the account's name
          Text(
            //gets Google Account's display name
            "UserName", style: subtitleStyle,
          ),
          SizedBox(
            height: 10,
          ),
          //returns the account's profile picture, within a square with curved corners
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            //returns the account's profile picture in the centre
            child: Image.network(
              "https://cdn.drawception.com/images/panels/2015/7-9/sbAr479q7j-10.png",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //creates a Sign Out button
          RaisedButton(
              child: Container(
                width: 100,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Sign Out",
                        style: header3Style,
                      ),
                    ),
                    Icon(Icons.logout),
                  ],
                ),
              ),
              //when pressed, call the sign out method
              onPressed: () {})
        ],
      ),
    );
  }
}
