import 'package:first_app/ui/ui.pages/counter.page.dart';
import 'package:first_app/ui/ui.pages/gallery.page.dart';
import 'package:first_app/ui/ui.pages/home.page.dart';
import 'package:first_app/ui/ui.pages/meteo.page.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context)=> HomePage(),
        "/meteo": (context)=>MeteoPage(),
        "/gallery": (context)=>GalleryPage(),
        "/counter": (context)=>CounterPage(),
      },
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage(),
    );
  }
}

