import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/six.dart';
import 'package:food/third.dart';
import 'package:google_sign_in/google_sign_in.dart';


import 'authentication.dart';
class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:"830558307633-shbpu7quomattosdig0aibt43bnupaq9.apps.googleusercontent.com"
  );

  Future<void> signInWithGoogle(BuildContext context,Function setstate) async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = userCredential.user;
      print(credential);
      Navigator.push(context, MaterialPageRoute(builder: (context) =>six ())
      );
      // Use the user object for further operations or navigate to a new screen.
    } catch (e) {
      print(e.toString());
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>third())
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right:350.0,top: 30.0),
                        child: Icon(Icons.arrow_back,color:Colors.white,),
                      )),
                  SizedBox(height: 60,),
                  Text('Welcome back',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                  Text('Log in to access your account',style: TextStyle(fontSize:30,
                      color: Colors.white)),SizedBox(height: 50,),
                  Container(height: MediaQuery.of(context).size.height/18,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(controller: _emailController,
                        decoration:
                        InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 20),

                        ),)),SizedBox(height: 50,),
                  Container(height: MediaQuery.of(context).size.height/18,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(controller: _passwordController,
                        decoration:
                        InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 20),

                        ),)),SizedBox(height: 80,),

                  Container(height: MediaQuery.of(context).size.height/15,
                    width: MediaQuery.of(context).size.width/1.2,
                    child: ElevatedButton(onPressed: () async { final message = await AuthService().login(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    if (message!.contains('Success')) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => six(),
                        ),
                      );
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                    }, child:Text('Login',
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,
                          fontSize: 35),
                    )),
                  )
                ],
                ),

              )
            ]
            )  ));
  }
}
