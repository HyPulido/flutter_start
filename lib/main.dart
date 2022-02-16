import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:HomeScreen()
      
      /*  Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar '),
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user), label: "User"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: "Notifications"),
          ],
        ),
      ), */
    );
  }
}
