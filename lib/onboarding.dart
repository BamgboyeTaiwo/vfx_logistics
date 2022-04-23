import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vfx_logistics/components/button.dart';
import 'package:vfx_logistics/onboardpage.dart';
import 'package:vfx_logistics/size_config.dart';

class Onboard extends StatefulWidget {
  // const Onboard({Key? key}) : super(key: key)
  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentPage = 0;

  //
  List<Map<String, dynamic>> splashPageData = [
    {
      "LogoText": "Logistics",
      "text": "",
      "image": 'assets/images/Onboarding1.png',
      "padding": -50.0
    },
    {
      'LogoText': "Warehouse",
      "text": "",
      "image": 'assets/images/Onboarding2.png',
      "padding": -44.0
    },
    {
      'LogoText': "Delivery",
      "image": 'assets/images/Onboarding3.png',
      "padding": -44.0
    },
  ];

  //
  @override
  Widget build(BuildContext context) {
    //
    final _controller = PageController();
    
    //
    
    SizeConfig().init(context);
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: splashPageData.length,
        itemBuilder: (context, index) => EachPage(
            imagelocation: splashPageData[index]['image'],
            Logoname: splashPageData[index]['LogoText'],
            control: _controller,
            imagepadding: splashPageData[index]['padding']),
        // onPageChanged: (value) {
        //   setState(() {
        //     currentPage = value;
        //   });
        // },
      ),
        

    );
  }

}





