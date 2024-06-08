import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/six.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'five.dart';
import 'four.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:"649229995407-rgm9pshk81esqsiqao2iph9mkp7nmqeh.apps.googleusercontent.com"
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
      body: Column(children: [
        Container(height: MediaQuery.of(context).size.height/1,
          width:  MediaQuery.of(context).size.width/1,
          decoration: BoxDecoration(
              image: DecorationImage(
                image  : AssetImage('assets/img_3.png'),fit: BoxFit.fill,
              )
          ),

          child: Column(children: [SizedBox(height: 450,),
            Container(height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)
              ),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>five())
                );
              }, child: Text('Sign up',style: TextStyle(fontSize: 40
                  ,color: Colors.green),)),
            ),SizedBox(height: 40,),
            Container(height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)
              ),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>four())
                );
              }, child: Text('Login ',style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold ,color: Colors.red),)),
            ),SizedBox(height: 25,),
            Text('OR',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,
                color: Colors.white),),
            SizedBox(height: 25,),
            Container(height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/img_4.png')
                  )
              ),
              child: ElevatedButton(
                  onPressed: ()async{signInWithGoogle(context,setState);
                  }, child: Text('Sign-in with Google',style: TextStyle(fontSize: 20
                  ,color: Colors.black),)),
            )
          ],),
        ),
      ],),
    );
  }
}
