import 'package:first_app/ui/ui.widgets/drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text('Home Page'),),
      body: Center(
        child: Text('Assalamou aleykoum', style: TextStyle(color: Colors.green,
            fontSize: 30
        ),),
      ),
    );
  }
}