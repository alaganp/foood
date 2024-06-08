import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food/second.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>second(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 38.0,top: 200),
          child: Container(height: MediaQuery.of(context).size.height/2,
            width:  MediaQuery.of(context).size.width/1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image  : AssetImage('assets/img_11.png'),fit: BoxFit.fill,
                )
            ),),
        ),
      ]
      ),
    );
  }
}