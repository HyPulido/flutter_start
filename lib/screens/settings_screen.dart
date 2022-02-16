import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreen();
}

class _SettingsScreen extends State<SettingsScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(25),
        child: FlatButton(
          child: Text(
            'Flat Button',
            style: TextStyle(fontSize: 20.0),
          ),
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
      Container(
        margin: EdgeInsets.all(25),
        child: TextButton(
          child: Text(
            'Text Button',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () {},
        ),
      ),
      Container(
        margin: EdgeInsets.all(2.0),
        child: ElevatedButton(
          child: Text(
            'elevated Button',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () {},
        ),
      ),
      Container(
        // margin: EdgeInsets.all(25),
        padding: EdgeInsets.all(.2),
        child: OutlinedButton(
          child: Text(
            'Outlined Button',
            style: TextStyle(fontSize: 16.0),
          ),
          onPressed: () {},
        ),
      ),
      Container(
        child: Row(children: <Widget>[
          Container(
            // margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(.2),
            child: OutlinedButton(
              child: Text(
                'Outlined Button',
                style: TextStyle(fontSize: 16.0),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            // margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(.2),
            child: OutlinedButton(
              child: Text(
                'Outlined Button',
                style: TextStyle(fontSize: 16.0),
              ),
              onPressed: () {},
            ),
          ),
        ]),
      ),
      Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child:
              Text('Este es una card exclusivamente para mostrar información'),
        ),
      ),

      //Container con 3 botones

      Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                // margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(.2),
                child: OutlinedButton(
                  child: Text(
                    'Outlined Button',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {},
                ),
              ),
              // Text('Deliver features faster', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Container(
                // margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(.2),
                child: OutlinedButton(
                  child: Text(
                    'Segundo Button',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                // margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(.2),
                child: OutlinedButton(
                  child: Text(
                    'Segundo Button',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            // Expanded(
            //   child: FittedBox(
            //     fit: BoxFit.contain, // otherwise the logo will be tiny
            //     child: const FlutterLogo(),
            //   ),
            // ),
          ],
        ),
      ),
    ]))

        // body: Center(child: Text('You have pressed the button times.')),
        // backgroundColor: Colors.blue.shade50,

//     return Container(
//       decoration: BoxDecoration(color: Colors.yellow.shade100),

// button: ButtonBar
//       child: Center(
//         child: Text("Hola mundo malo"),

//       ),

        // child: Center(
        //   child: Text(
        //     'Hello World',
        //     textDirection: TextDirection.ltr,
        //     style: TextStyle(
        //       fontSize: 24,
        //       color: Colors.black87,
        //     ),
        //   ),
        // ),
        );

    // return Scaffold(
    //   body: Center(child: Text('You have pressed the button $_count times.')),
    //   backgroundColor: Colors.blue.shade50,
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () => setState(() => _count++),
    //     // tooltip: 'Increment Counter',
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}



// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sample Code'),
//       ),
//       body: Center(child: Text('You have pressed the button $_count times.')),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() => _count++),
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//     );

//     // return Container(
//     //   color: Color.fromARGB(23, 23, 23, 1),
//     //   child: Center(
//     //     child: Text('Hola mundo '),
//     //   ),
//     // );
//   }
// }

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


//  Scaffold(
//         appBar: AppBar(
//           title: Text('Material App Bar '),
//           elevation: 0,
//           backgroundColor: Colors.black,
//         ),
//         body: Center(
//           child: Container(
//             child: Text('Hello World'),
//           ),
//         ),