import 'package:flutter/material.dart';
import 'package:flutter_app/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  final PageController pageController =
      new PageController(initialPage: 1); //Dice en que tab iniciar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: currentPage == 0
            ? Text("User")
            : currentPage == 1
                ? Text("Settings")
                : Text("Notifications"),
        // Text('Material App Bar $currentPage'),
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.blue.shade50,
      ),

      //Cambiar pantalla con movimiento, deslizando
      body: PageView(
        controller: pageController,
        // physics: BouncingScrollPhysics(),//Scroll de manera manual
        physics:
            NeverScrollableScrollPhysics(), //No se puede hacer Scroll de manera manual
        children: [
          CustomScreen(color: Colors.blue.shade50, texto: "User"),
          SettingsScreen(),
          CustomScreen(color: Colors.blue.shade50, texto: "Notifications")
        ],
      ),

      //Cambiar pantalla con botones inferiores
      // body: currentPage == 0
      //     ? CustomScreen(color: Colors.blue.shade50)
      //     : currentPage == 1
      //         ? CustomScreen(color: Colors.red)
      //         : CustomScreen(color: Colors.green),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;
          print('index $index');
          // CustomScreen(color: Colors.blue.shade50, texto: "User");
          pageController.animateToPage(index,
              duration: Duration(milliseconds: 400), curve: Curves.easeOut);
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
  final String texto;

  const CustomScreen({required this.color, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(texto),
      ),
    );
  }
}

// class SettingsScreen extends StatelessWidget {
//   final Color color;
//   final String texto;

//   const SettingsScreen({required this.color, required this.texto});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//       child: Center(
//         child: Text('Hola mundo $texto'),
//       ),
//     );
//   }
// }
