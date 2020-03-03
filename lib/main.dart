import 'package:flutter/material.dart';
import 'package:ejemplo_construccion/pages/calls.dart';
import 'package:ejemplo_construccion/pages/chats.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.teal[700],
        primaryColorDark: Colors.teal[900],
        accentColor: Colors.lightGreenAccent[400]
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentPage = 0;

  List<Widget> _pages =[
    CallPage(),
    ChatPage()
  ];

  void _changePage(int index){
    setState(() {
      _currentPage = index;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changePage,
        currentIndex: _currentPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.fast_rewind), title: Text('Retroceder')),
          BottomNavigationBarItem(
              icon: Icon(Icons.extension), title: Text('Funcionalidades')),
          BottomNavigationBarItem(
              icon: Icon(Icons.face), title: Text('Usuarios')),
        ],
      ),
      body: _pages[_currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.message, color: Colors.white),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
