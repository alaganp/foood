import 'package:flutter/material.dart';
import 'package:food/sevan1.dart';
class ice extends StatefulWidget {
  const ice({super.key});

  @override
  State<ice> createState() => _iceState();
}

class _iceState extends State<ice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children: [
          SizedBox(height: 10,),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>sevsn1())
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right:330.0,top: 20.0),
                child: Icon(Icons.arrow_back,),
              )
          ),
    Padding(
    padding: const EdgeInsets.only(left: 28.0),
    child: Container(height: MediaQuery.of(context).size.height/5,
    width: MediaQuery.of(context).size.width/1.2,
    decoration: BoxDecoration(
    image: DecorationImage(
    image  : AssetImage('assets/img_1.png'),fit: BoxFit.fill,
    ),
    )
    ),
    ),
    Text('Ice Cube Business🧊',style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 30
    ),
    ),SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('🧊 Make 3 Lakhs with an Ice Cube Business!🧊',
            style: TextStyle(fontSize: 18),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Thinking about starting an ice cube business?Heres what you need to know:',
            style: TextStyle(fontSize: 18),),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(right: 108.0),
            child: Text("1.MARKET UNDERSTANDING",style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Pinpoint the hotspots for ice cube demand like juice shops,restaurants,and pubs.'
                ' Knowing where your product is needed most sets the stage for targeted sales.🍹🍻',
            style: TextStyle(fontSize: 18
            ),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 238.0),
            child: Text('2.INVESTMENT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Start-up costs are surprisingly manageable.you\'ll need an ice-making machine,a freezer '
                'for storage,delivery bages, and an RO plant.With initial investments from just'
                ' Rs.50k to Rs.2 Lakh,you can tap into substantial profit margins thanks to the low'
                ' overhead.💰',style: TextStyle(fontSize: 18),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 208.0),
            child: Text('3.GOOD RAPPORT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Forge strong relationships with your potential clients (small food biz.Owners).'
                ' Kickstart these partnerships by offering discounts on first orders,paving'
                ' the way for ongoing transactions and loyalty.👥🫱🏽‍🫲🏽',
            style: TextStyle(fontSize: 18),),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Curious about the pros and cons of this venture? Click on the below link👇',
            style: TextStyle(fontSize: 18),),
          )
    ]
        )
        )
    );
  }
}
