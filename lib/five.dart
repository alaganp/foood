import 'package:flutter/material.dart';


import 'authentication.dart';
import 'four.dart';
class five extends StatefulWidget {
  const five({super.key});

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
            scrollDirection: Axis.vertical,child:
        Column(children: [
          Container(height: MediaQuery.of(context).size.height/1,
              width:  MediaQuery.of(context).size.width/1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image  : AssetImage('assets/img_6.png'),fit: BoxFit.fill,
                  )
              ),child: Column(children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>four())
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right:350.0,top: 30.0),
                      child: Icon(Icons.arrow_back,color:Colors.white,),
                    )),
                SizedBox(height: 60,),
                Text('Join us today',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text('Sign up now to become a member',style: TextStyle(fontSize:30,
                      color: Colors.white)),
                ),SizedBox(height: 50,),
                Container(height: MediaQuery.of(context).size.height/18,
                    width:MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration:
                      InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(fontSize: 20),

                      ),)),SizedBox(height: 50,),
                Container(height:MediaQuery.of(context).size.height/18,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextFormField(controller: _emailController,
                      decoration:
                      InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 20),

                      ),)),
                SizedBox(height: 50,),
                Container(height:MediaQuery.of(context).size.height/18,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextFormField(controller: _passwordController,
                      decoration:
                      InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 20),

                      ),)),
                SizedBox(height: 80,),
                Container(height: MediaQuery.of(context).size.height/15,
                  width: MediaQuery.of(context).size.width/1.3,
                  child: ElevatedButton(onPressed: () async {
                    final message = await AuthService().registration(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    if (message!.contains('Success')) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => four()));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  },
                      child:Text('Sign up',
                        style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,
                            fontSize: 35),
                      )
                  ),

                ),SizedBox(height: 20,),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Already a member?",style: TextStyle(fontSize: 25,color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child:
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>four ())
                          );
                        },
                        child: Text('Login Here',style: TextStyle(fontSize: 30
                            ,color: Colors.red,
                            fontWeight: FontWeight.bold),)),
                  ),
                ],
                ),

              ]
              ))
        ]
        )
        )  );
  }
}
