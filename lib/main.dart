import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessageButtonScreen(),
    );
  }
}

class MessageButtonScreen extends StatefulWidget {
  @override
  _MessageButtonScreenState createState() => _MessageButtonScreenState();
}

class _MessageButtonScreenState extends State<MessageButtonScreen> {
  String message = '';
  int times = 0;
  void showMessage() {
    setState(() {
      times+=1;
      message = "button pressed ${times}X";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Flutter App",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                ),
                shadowColor: WidgetStateProperty.all<Color>(Colors.black),
                elevation: WidgetStateProperty.all<double>(5.0),

              ),
              onPressed: showMessage,
              child: const Text('Press Me!'),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: 
            FloatingActionButton(
              onPressed: () {
                print('skilly Pressed!');
              },
              tooltip: 'skilly',
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child:const Icon(Icons.tips_and_updates_sharp),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: 
            FloatingActionButton(
              onPressed: () {
                print('Add Pressed!');
              },
              tooltip: 'Add',
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child:const Icon(Icons.add),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // Align to right
    );
  }
}
