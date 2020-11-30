import 'package:flutter/material.dart';
import 'package:the_board/backend/themes.dart';
import 'package:the_board/pages/streamPage.dart';
import 'package:the_board/pages/streamPostCreationPage.dart';
import 'package:the_board/pages/workroomPage.dart';
import 'package:the_board/pages/accountPage.dart';

class AppTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      bottom: TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.white.withOpacity(0.3),
        unselectedLabelStyle: TextStyle(fontSize: 12.0),
        labelStyle: TextStyle(fontSize: 16.0),
        indicatorColor: Colors.white,
        indicatorWeight: 2.0,
        tabs: [
          Tab(
            child: Text('Work Rooms', style: subtitleStyle,),
          ),
          Tab(
            child: Text('Streams', style: subtitleStyle,),
          ),
          Tab(
            child: Text('Create a stream post', style: subtitleStyle,),
          ),
          Tab(
            child: Text('Acount', style: subtitleStyle,),
          ),
        ],
      ),
      title: Text('The Board', style: titleStyle,),
    );
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: MediaQuery.of(context).orientation == Orientation.landscape ||
                MediaQuery.of(context).viewInsets.bottom != 0.0
            ? PreferredSize(child: appbar, preferredSize: Size.fromHeight(48))
            : appbar,
        body: TabBarView(
          children: [
            WorkroomPage(),
            StreamPage(),
            StreamPostCreationPage(),
            AccountPage(), // Swap with widget of account page
          ],
        ),
      ),
    );
  }
}
