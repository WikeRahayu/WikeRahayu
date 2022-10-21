import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF545D68)),
          ),
       title: Text('Curse',
       style: TextStyle(
        fontFamily: 'Varela', 
        fontSize: 20.0,
        color: Color(0xFF545D68), 
       ),
       ),
        actions: <Widget>[
          IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.more_vert_sharp, color: Color(0xFF545D68)),
          ),
        ],
      ),
      body: Stack(
        children:<Widget>[
          Container(),
        ],
      ),
    )
  }
}
