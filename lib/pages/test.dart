import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget{
  @override
  TestState createState() {
    // TODO: implement createState
    return TestState();
  }
}

class TestState extends State<TestPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      top: false,
        bottom: false,
        child: Form(
          child: Scrollbar(
            child: SingleChildScrollView(
              dragStartBehavior: DragStartBehavior.down,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(height: 24.0),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.person),
                      hintText: 'What do people call you?',
                      labelText: 'Name *',
                    ),
                    onSaved: (String value) {  },
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.person),
                      hintText: 'What is your email?',
                      labelText: 'Email *',
                    ),
                    onSaved: (String value) {  },
                  ),
                ],
              )
            ),
          ),
        )
    );
  }

}