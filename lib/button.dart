import 'package:flutter/material.dart';

void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MessageButtonScreen(),
    );
  }
}

class MessageButtonScreen extends StatefulWidget{
  @override
  _MessageButtonScreenState createState()=> _MessageButtonScreenState();
}
class _MessageButtonScreenState extends State<MessageButtonScreen>{
  String message = '';
  int times = 0;
  void showMessage(){
    setState(() {
      times++;
      message = "buton pressed ${times}X";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
    );
    
  }
}