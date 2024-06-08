import 'package:flutter/material.dart';
import 'package:food/sevan1.dart';
import 'package:food/six.dart';

class sevan extends StatefulWidget {
  const sevan({super.key});

  @override
  State<sevan> createState() => _sevanState();
}

class _sevanState extends State<sevan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>sevsn1())
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
                  )
              ),
            ),
            Text('Pav bhaji business',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30
            ),
            ),SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 60.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Start a "Pav bhaji business" with 1-2 lakhs🤯',
                style: TextStyle(fontSize: 18),),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Yes, a college student from Telangana has started a part-time'
                  ' pav bhaji business and is now making 60K profit every month✅'
                  ,style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text('1️.MANU OPTIONS',style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sell pav bhaji as a main recipe but remember to add Pani Puri,'
                  ' Samosa and beverage. It all makes up a whole store.'
                ,style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 280.0),
              child: Text('2️.Location',style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Make sure to keep your shop in crowded places because its the key.'
                ,style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 138.0),
              child: Text('3.Quality and consistency',style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('To build a loyal customerb base you need permium taste and quality.'
                ,style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 268.0),
              child: Text('4.Investment',style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280.0),
              child: Text('License-5000',style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text('Setup-20 to 4000',style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text('Equipment-15000',style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text('Ingredients-5000',style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 138.0),
              child: Text('Branding and marketing-10000',style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 38.0),
              child: Text('So a total of 50000 to 1 lakh set up costs✅',style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20,),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Want to know more in details? Click on the below link👇',
                               style: TextStyle(fontWeight: FontWeight.bold,
                               fontSize: 20),),
               ),


          ],
        ),
      ),
    );
  }
}
