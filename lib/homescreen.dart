import 'package:flutter/material.dart';

import 'home/homeSCREEN_shapes.dart';

class homescren extends StatelessWidget {
  const homescren({super.key});
  static const String RouteName = 'home-screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context, 'LogIn');
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ],
          ),
          toolbarHeight: MediaQuery.of(context).size.height * 0.15,
          centerTitle: true,
          title: Text(
            'Route',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          backgroundColor: Color(0xFF004182),
        ),
        body: Container(
          color: Colors.white,

          child: shape()
        ),
      ),
    );
  }
}
