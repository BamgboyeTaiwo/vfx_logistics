import 'dart:async';


import 'package:flutter/material.dart';
import 'package:vfx_logistics/onboarding.dart';
import 'package:vfx_logistics/size_config.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  @override
  void initState(){
    super.initState();
    Timer( const Duration(seconds: 5), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Onboard() )) ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF178060),

      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //  Layoutpicture(),
              Image(image: AssetImage('assets/images/Layer2.png')), 
              SizedBox(height: getResponHeight(20),),
                Text(
                  'VFX LOGISTICS',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: getResponWidth(32),
                      color: Color(0xFFFFFFFF)),
                ),
                SizedBox(height: getResponHeight(5),),
                Text('....we move anything,seriously',
                style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: getResponWidth(14),
                      color: Color(0xFFFFFFFF)),
                ),
                // OnboardingPage()
                // Button()
          
              ],
            ),
          ),
        ),
    );
  }
}