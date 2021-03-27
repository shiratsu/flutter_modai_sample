import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Alignment _alg = Alignment.topLeft;

  void _onTap() => setState(() => _alg = Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign'),
      ),
      body:  Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text("test"),
              TextButton(
                child: Text('OK'),
                onPressed: _onPressed,
              )
            ],
          )
      )
    );
  }

  void _onPressed() {
    showMaterialModalBottomSheet(
      context: context,
      builder: (context) => Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: TextButton(
                child: Text('OK'),
                onPressed: _onPressedInModal,
              )
      ),
    );
  } 
  void _onPressedInModal() {
  }   
}
