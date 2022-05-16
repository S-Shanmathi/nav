import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key, required String title}) : super(key: key);

  @override
  _ThirdScreenState createState() {
    return _ThirdScreenState();
  }
}

class _ThirdScreenState extends State<ThirdScreen> {
  // this allows us to access the TextField text
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Third screen')),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    child: const Text(
                      'LogOut',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      // Navigator.pushNamed(context, "/");
                      if (Platform.isAndroid) {
                        SystemNavigator.pop();
                      } else {
                        exit(0);
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
