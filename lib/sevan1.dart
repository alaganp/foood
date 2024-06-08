import 'package:flutter/material.dart';
import 'package:food/ice.dart';
import 'package:food/sevan.dart';
import 'package:food/six.dart';
class sevsn1 extends StatefulWidget {
  const sevsn1({super.key});

  @override
  State<sevsn1> createState() => _sevsn1State();
}

class _sevsn1State extends State<sevsn1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading:
        GestureDetector(
        onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>six())
      );
    },
    child: Padding(
    padding: const EdgeInsets.only(right:20.0,top: 30.0),
    child: Icon(Icons.arrow_back,),
    )
    ),actions: [
    Padding(
    padding: const EdgeInsets.only(top: 11.0,right:80.0),
    child: Container(height: MediaQuery.of(context).size.height/9,
    width: MediaQuery.of(context).size.width/1.6,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(25),

    ),child: Padding(
    padding: const EdgeInsets.only(right: 240.0),
    child: Icon(Icons.search),
    ),

    ),
    ),
    ]
    ),
    body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
    children: [SizedBox(height: 30,),
    Padding(
    padding: const EdgeInsets.only(left: 28.0),
    child: Container(height: MediaQuery.of(context).size.height/5,
    width: MediaQuery.of(context).size.width/1.2,
    decoration: BoxDecoration(
    image: DecorationImage(
    image  : AssetImage('assets/img.png'),fit: BoxFit.fill,
    ),
    ),child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>sevan())
          );
        },
      ),
    ),
    ),Text('Pav bhaji business',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 30
      ),
      ),
      SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: Container(height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width/1.2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image  : AssetImage('assets/img_1.png'),fit: BoxFit.fill,
            ),
          ),child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>ice())
              );
            },
          ),
        ),
      ),Text('Ice Cube Business!🧊',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 30
      ),
      ),
]
    )
    )
    );
  }
}
