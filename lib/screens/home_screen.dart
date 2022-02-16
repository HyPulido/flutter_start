import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar $currentPage'),
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.blue.shade50,
      ),

      //Cambiar pantalla con movimiento
      // body: PageView(
      //   children: [
      //     CustomScreen(color: Colors.blue.shade50),
      //     CustomScreen(color: Colors.red),
      //     CustomScreen(color: Colors.blue.shade50)
      //   ],
      // ),

body:currentPage==0 ?CustomScreen(color: Colors.blue.shade50):currentPage==1 ? CustomScreen(color: Colors.red):CustomScreen(color: Colors.green),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;
          setState(() {});
        },
        backgroundColor: Colors.blue.shade50,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black87,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: "User"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: "Notifications"),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text('Custom Screen'),
      ),
    );
  }
}
