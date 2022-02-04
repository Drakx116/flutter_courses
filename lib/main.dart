import 'package:flutter/material.dart';
import 'package:flutter_courses/common/widgets/buttons/NumberButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _display = "";
  int _currentValue = 0;

  void computeValue(int number) {
    setState(() {
      _currentValue = number;
      _display += number.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(_display, style: const TextStyle(
                    fontSize: 24
                  )),
                ),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () { return;

                          },
                          child: const Text('OK'),
                        )
                      ],
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              NumberButton(value: 1, computeValue: computeValue),
                              NumberButton(value: 2, computeValue: computeValue),
                              NumberButton(value: 3, computeValue: computeValue),
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              NumberButton(value: 4, computeValue: computeValue),
                              NumberButton(value: 5, computeValue: computeValue),
                              NumberButton(value: 6, computeValue: computeValue),
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              NumberButton(value: 7, computeValue: computeValue),
                              NumberButton(value: 8, computeValue: computeValue),
                              NumberButton(value: 9, computeValue: computeValue),
                            ]
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NumberButton(value: 0, computeValue: computeValue)
                          ],
                        )
                      ],
                    )
                )
              ]
          ),
        )
    );
  }
}
