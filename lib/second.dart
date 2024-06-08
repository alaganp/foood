import 'package:flutter/material.dart';
import 'package:food/third.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column(children: [
          Container(height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/1,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    blurRadius: 85,spreadRadius: 10,
                  )
                ],
              ) ,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Image(
                  image:AssetImage('assets/img_5.png'),

                  fit: BoxFit.cover,
                ),
              )),SizedBox(height: 150,),

          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Text('Best Food Business Ideas',style: TextStyle(fontSize: 50,color: Colors.green,
                fontWeight: FontWeight.bold
            )),
          ),SizedBox(height: 100,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) =>third()));
          }, child:Text('Get started',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 40,color: Colors.red
          ),)),

        ]
        )
    );
  }
}
