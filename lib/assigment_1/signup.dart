import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/assigment_1/login.dart';

import 'main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Gradient _gradient = LinearGradient(colors: [Colors.orange, Colors.red]);

    return Scaffold(

      body: Stack(
        children: [

          Container(decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover),

            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 0.2, 0.8, 1],
            ),
          )
          ),

          SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.2 ,left: 30,right: 30),
              child: Column(
                children: [
                  Text('Welcome',style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold ,color: Colors.white),),

                  Text('Join Mr BookWorm!!',style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.normal ,color: Colors.white),),

                  SizedBox(height:20),

                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                    decoration: InputDecoration(hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                        fillColor: Colors.transparent,
                        prefixIcon: Icon(Icons.email,color: Colors.white,),
                        filled: true,

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.orange))

                    ),
                  ),

                  SizedBox(height:20),

                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                    decoration: InputDecoration(hintText: 'City',
                        hintStyle: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                        fillColor: Colors.transparent,
                        prefixIcon: Icon(Icons.home,color: Colors.white,),
                        filled: true,

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.orange))

                    ),
                  ),

                  SizedBox(height:20),

                  TextField(
                    textAlign: TextAlign.center,
                    maxLength: 10,
                    style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                    decoration: InputDecoration(hintText: 'Mobile No',
                        hintStyle: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                        counterText: '',
                        fillColor: Colors.transparent,
                        prefixIcon: Icon(Icons.phone,color: Colors.white,),
                        filled: true,

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.orange))

                    ),
                      keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),

                  SizedBox(height:20),

                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                    decoration: InputDecoration(hintText: 'College',
                        hintStyle: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                        fillColor: Colors.transparent,
                        prefixIcon: Icon(Icons.school,color: Colors.white,),
                        filled: true,

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.orange))

                    ),
                  ),

                  SizedBox(height:20),

                  TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                    decoration: InputDecoration(hintText: 'Password',
                        prefixIcon: Icon(Icons.key,color: Colors.white,),
                        hintStyle: TextStyle(fontSize: 14 ,fontWeight: FontWeight.normal ,color: Colors.white),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(width: 2,color: Colors.white)),

                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.white)),

                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(width: 1,color: Colors.green))

                    ),

                  ),

                  SizedBox(height: 20),

                  Container(
                    width: screenWidth*0.8,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(40.0)),
                        color: Colors.white),

                    child: TextButton(
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Register SuccessFull')),);
                        Navigator.push(context, MaterialPageRoute(builder: (_) => MyHomePage(title:'Dew Demo')));
                      },



                      child: Text('Register',style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.normal ,color: Colors.black),),

                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text("Please !!",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width: screenWidth * 0.8,
                    /* For Box Decoration*/
                    /* decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
                    boxShadow: [BoxShadow(color: Colors.white,offset: Offset(0,0.5),blurRadius: 2,blurStyle: BlurStyle.inner)]
                  ),*/

                    decoration: BoxDecoration(color:Colors.transparent,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),

                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login ')),);
                      },

                      child: Text('Login !',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
