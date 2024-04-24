import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, 'home');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade400,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade600,
        centerTitle:true,
        title: const Text("With Your Sweetie Mood",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
          child: Image.asset("assets/image/chocolate.jpeg",
            height: 300,width: 300,
          ),
      ),
    );
  }
}
