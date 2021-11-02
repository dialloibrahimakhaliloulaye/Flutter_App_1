import 'package:first_app/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.green
                      ]
                  )
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/logo flutter.jpeg'),
                      radius: 55,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/unknown.jpg'),
                      radius: 40,
                    ),
                  ],
                ),
              )
          ),
          ...(GlobalParams.menus as List).map((item) {
              return Column(
                children: [
                  ListTile(
                    title: Text('${item['title']}', style: TextStyle(fontSize: 20),),
                    leading: item['icon'],
                    trailing: Icon(Icons.arrow_right, color: Colors.green,),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, "${item['route']}");
                    },
                  ),
                  Divider(color: Colors.green, height: 4,)
                ],
              );
          })
        ],
      ),
    );
  }
}