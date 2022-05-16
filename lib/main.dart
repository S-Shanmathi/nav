// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var _textController = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: const Text("FirstPage"),
//       ),
//       body: new ListView(
//         children: <Widget>[
//           new ListTile(
//             title: new TextField(
//               controller: _textController,
//             ),
//           ),
//           new ListTile(
//             title: new RaisedButton(
//               child: const Text("Next"),
//               onPressed: () {
//                 var route = new MaterialPageRoute(
//                   builder: (BuildContext context) =>
//                       new NextPage(value: _textController.text),
//                 );
//                 Navigator.of(context).push(route);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NextPage extends StatefulWidget {
//   final String value;

//   NextPage({Key? key, required this.value}) : super(key: key);

//   @override
//   _NextPageState createState() => new _NextPageState();
// }

// class _NextPageState extends State<NextPage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Next Page"),
//       ),
//       body: new Text("${widget.value}"),
//     );
//   }
// }

// import 'dart:html';

// void main() {
//   runApp(MaterialApp());

//   // title: 'Navigation',
//   // home: FirstScreen(),
// }

// class MaterialApp extends StatefulWidget {
//   const MaterialApp({Key? key}) : super(key: key);

//   @override
//   State<MaterialApp> createState() => _MaterialAppState();
// }

// class _MaterialAppState extends State<MaterialApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'navigation',
//       debugShowCheckedModeBanner: false,
//       initialRoute: "/",
//       routes: {
//         "home": (BuildContext context) => FirstScreen(),
//         "/": (BuildContext context) => ThirdScreen(
//               title: 'Third screen',
//             ),
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nav/firstScreen.dart';
import 'package:nav/thirdscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  // Color _primaryColor = HexColor('#651BD2');
  //Color _accentColor = HexColor('#320181');

  //Color _primaryColor = HexColor('#FFC867');
  //Color _accentColor = HexColor('#FF3CBD');

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/home": (BuildContext context) => const ThirdScreen(
              title: 'ThirdScreen',
            ),
        "/": (BuildContext context) => const FirstScreen(
              title: 'FirstScreen',
            ),
      },
      //home: SplashScreen(title: 'Renty Rents..'),
    );
  }
}
