import 'package:flutter/material.dart';
import 'package:food/six.dart';

class eight extends StatefulWidget {
  const eight({super.key});

  @override
  State<eight> createState() => _eightState();
}

class _eightState extends State<eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [ GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>six())
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right:360.0,top: 20.0),
              child: Icon(Icons.arrow_back,),
            ),
          ),
            Text('10 Reasons Why Restaurants Fail & How to Avoid The Mistakes',
              style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold
              ),),SizedBox(height: 30,),
            Text('Why do Restaurants Fail?',style: TextStyle(
                fontSize: 35,fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            Text('Have you ever heard it said that 40% of restaurants fail within three years?'
                'There’s even been a study done where it found that almost half of '
                'all restaurants go out of business in the first five years.'
                ' While the reasons for failure differ, '
                'many will agree that one thing holds amongst'
                ' all those who find themselves at this point: improper execution',
              style: TextStyle(fontSize: 15),),
            SizedBox(height: 20,),
            Text('Restaurants fail for various reasons,'
                ' but Restaurant owners can avoid certain common mistakes. '
                'Here are 10 major reasons why restaurants fail:',
              style: TextStyle(fontSize: 15),)
          ],),
        ),
      ),
    );
  }
}
