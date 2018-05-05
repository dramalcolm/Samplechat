import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

const String _name = "Douglas Malcolm";

void main() {
  runApp(
    new MaterialApp(
      title: "Friendlychat",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Friendlychat"),
        ),
      ),
    ),
  );
}

// Modify the ChatScreen class definition to extend StatefulWidget.
class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

// Add the ChatScreenState class definition in main.dart.
class ChatScreenState extends State<ChatScreen> {

  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Friendlychat")),

    );
  }
  Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(
            hintText: "Send a message"),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}