import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_projects/login.dart';

import 'main.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    /*
    * Function to navigate screen*/
    _navigatetoHome();
  }

  _navigatetoHome()async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /**
    *Simple Text Splash Screen
     * * */
   /* return Scaffold(
      body: Center(
        child: Container(
          child: Text('Splash Screen Flutter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        ),
      ),
    );*/

    return Scaffold(
      body: Container(

        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover
        )),

        child: Center(
          child: Text('Mr BookWorm!!',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold , color: Colors.white),),
        ),
      ),
    );
  }
}
