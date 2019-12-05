import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

int counter = 0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: CounterText(),
    );
  }
}

class CounterText extends StatefulWidget {
  @override
  createState() => CounterTextState();
}

class CounterTextState extends State<CounterText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Counter', style: TextStyle(fontSize: 35))),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AutoSizeText(
            counter.toString(),
            maxLines: 1,
            style: TextStyle(fontSize: 500),
          ),
        ],
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () => setState(
                () {
                  counter--;
                },
              ),
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () => setState(
                () {
                  counter = 0;
                },
              ),
              child: Text('0', style: TextStyle(fontSize: 25)),
            ),
            FloatingActionButton(
              onPressed: () => setState(
                () {
                  counter++;
                },
              ),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
