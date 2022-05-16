import 'package:flutter/material.dart';
import 'package:nav/secondscreen.dart';
import 'package:nav/thirdscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key, required String title}) : super(key: key);

  @override
  _FirstScreenState createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  String text = 'Text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First screen'),
        // backgroundColor: Color.fromARGB(255, 3, 133, 10),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(213, 188, 250, 226),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    32.0,
                  ),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  child: const Text(
                    'Go to second screen',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () => _awaitReturnValueFromSecondScreen(context),
                ),
                ElevatedButton(
                  child: const Text(
                    'LogIn',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdScreen(
                                title: 'Third',
                              )),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    final result = await Navigator.push<String>(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondScreen(),
        ));

    setState(() {
      text = result ?? '';
    });
  }
}
