import 'package:flutter/material.dart';
import 'package:vfx_logistics/components/button.dart';
import 'package:vfx_logistics/size_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class EachPage extends StatelessWidget {
  const EachPage({
    Key? key,
    required this.Logoname,
    required this.imagelocation,
    required this.imagepadding,
    required this.control,
  }) : super(key: key);

  final String Logoname, imagelocation;
  final dynamic imagepadding;
  final control;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        child: SingleChildScrollView(
          child:
        
        Stack(
      children: [
        Positioned(
          height: getResponHeight(41),
          // width: getResponWidth(130),
          left: getResponWidth(141),
          top: getResponHeight(59),
          child: Text(
            Logoname,
            style: TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: getResponWidth(32),
              fontWeight: FontWeight.w700,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
        Positioned(
            width: getResponHeight(500),
            height: getResponHeight(500),
            top: getResponHeight(19),
            left: getResponWidth(-50),
            child: Image(image: AssetImage(imagelocation))),
        Positioned(
          height: getResponHeight(44),
          width: getResponWidth(295),
          left: getResponWidth(59),
          top: getResponHeight(475),
          child: Text(
            'vfx logistics brings you closer to \nyour customers and blahh blahh here.',
            style: TextStyle(
              color: Color(0xFF666666),
              fontSize: getResponWidth(16),
              fontWeight: FontWeight.w600,
              fontFamily: 'OpenSans',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Positioned(
            height: getResponHeight(44),
            width: getResponWidth(379),
            left: getResponWidth(16),
            top: getResponHeight(677),
            child: ButtonGreen(buttontext: 'Login')),
        Positioned(
            height: getResponHeight(44),
            width: getResponWidth(379),
            left: getResponWidth(16),
            top: getResponHeight(729),
            child: ButtonWhite(buttontext: 'Sign Up')),

        Positioned(
            height: getResponHeight(10),
            width: getResponWidth(46),
            left: getResponWidth(163),
            top: getResponHeight(571),
          child: LoadDot(control: control),
        )

      ],
    )) );
  }
}



class LoadDot extends StatelessWidget {
  const LoadDot({ 
    Key? key,
    required this.control
   }) : super(key: key);

   final control;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: control,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: Color(0xFF1A936F),
          dotColor: Color(0xFFC4C4C4)
          
        ),
        );
    
  }
}

