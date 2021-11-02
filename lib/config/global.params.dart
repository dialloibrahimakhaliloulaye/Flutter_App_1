
import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String, dynamic>> menus=[
    {
      "title":"Counter", "icon":Icon(Icons.home, color: Colors.green), "route":"/counter"
    },
    {
      "title":"Meteo", "icon":Icon(Icons.camera, color: Colors.green), "route":"/meteo"
    },
    {
      "title":"Gallery", "icon":Icon(Icons.map, color: Colors.green), "route":"/gallery"
    },
  ];
}