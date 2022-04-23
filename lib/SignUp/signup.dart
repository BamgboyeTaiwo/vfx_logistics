import 'package:flutter/material.dart';
import 'package:vfx_logistics/components/button.dart';
import 'package:vfx_logistics/size_config.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      // // appBar: AppBar(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: getResponWidth(16)),
          child: Center(
            
            child: SingleChildScrollView(
           child: Column(children: [
              Padding( 
                padding: EdgeInsets.only(top: getResponHeight(53)),
                child: Image(
                  image: AssetImage('assets/images/Layer2.png'),
                  height: getResponHeight(81),
                  width: getResponWidth(132),
                  ),
              ),
              SizedBox(
                height: getResponHeight(30),
              ),
              Text(
                'Create an Account',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: getResponWidth(18),
                  fontWeight: FontWeight.w800,
                  fontFamily: 'OpenSans',
                ),
              ),
              SizedBox(
                height: getResponHeight(36),
              ),
              Form(
                  child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        constraints:
                            BoxConstraints(maxHeight: getResponHeight(50)),
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        labelText: 'Full Name',
                        labelStyle: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: 'MontserratRegular'),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            borderRadius: BorderRadius.circular(getResponWidth(5)),
                            gapPadding: getResponWidth(16))),
                  ),

                  //
                  SizedBox(
                    height: getResponHeight(10),
                  ),
                  //

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        constraints:
                            BoxConstraints(maxHeight: getResponHeight(50)),
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: 'MontserratRegular'),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            gapPadding: getResponWidth(16))),
                  ),
                  //
                  SizedBox(
                    height: getResponHeight(10),
                  ),
                  //

                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        constraints:
                            BoxConstraints(maxHeight: getResponHeight(50)),
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: 'MontserratRegular'),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            gapPadding: getResponWidth(16))),
                  ),

                  //
                  SizedBox(
                    height: getResponHeight(10),
                  ),
                  //

                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        constraints:
                            BoxConstraints(maxHeight: getResponHeight(50)),
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: 'MontserratRegular'),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            gapPadding: getResponWidth(16))),
                  ),

                  //
                  SizedBox(
                    height: getResponHeight(10),
                  ),
                  //

                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        constraints:
                            BoxConstraints(maxHeight: getResponHeight(50)),
                        fillColor: Color(0xFFFFFFFF),
                        filled: true,
                        labelText: 'Confrim Password',
                        labelStyle: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: 'MontserratRegular'),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            gapPadding: getResponWidth(16))),
                  ),
                ],
              )),
              SizedBox(
                height: getResponHeight(80),
              ),
              SizedBox(
                width: double.maxFinite,
                height: getResponHeight(44),
                child: ButtonGreen(buttontext: 'Create'),
              ),
              SizedBox(height: getResponHeight(80),),
              RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                      fontSize: getResponWidth(12),
                      fontFamily: 'MontserratRegular',
                    ),
                    children: <TextSpan>[
                      TextSpan(text:'\s\ '),
                      TextSpan(
                          text: '\' Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A936F),
                            fontSize: getResponWidth(12),
                            fontFamily: 'MontserratRegular',
                          ))
                    ]),
              )
            ]),
          ) ),
        ),
      ),
//Image(image: AssetImage('assets/images/Layer2.png'))
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.Name,
    required this.type,
  }) : super(key: key);

  final String Name, type;

//emailAddress C:\Users\Taiwo\Documents\LAB\Tools\vfx_logistics\windows

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          // hintText: 'Email',
          // hintStyle: TextStyle(
          //   color: Color(0xFFB3B3B3)
          // ),

          fillColor: Color(0xFFFFFFFF),
          filled: true,
          labelText: 'Email',
          labelStyle: TextStyle(color: Color(0xFFB3B3B3)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE6E6E6),
              ),
              gapPadding: getResponWidth(16))),
    );
  }
}




















      // body: SafeArea(
      //     child: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: getResponWidth(16)),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         child: Positioned(
      //           top: getResponHeight(20),
      //           child: Image(image: AssetImage('assets/images/Layer2.png'))
      //         ),
      //       ),
      //       // Positioned(
      //       //   top: getResponHeight(59),

              
      //       //   child: Image(image: AssetImage('assets/images/Layer2.png')),
             
      //       // ),

      //       // Padding(
      //       //   padding: EdgeInsets.only(top: getResponHeight(59)),
      //       //   child:Center( 
      //       //   child: Image(image: AssetImage('assets/images/Layer2.png')),
      //       // ), 
      //       // ),

            
      //       // Positioned(
      //       //   child: Image(image: AssetImage('assets/images/Layer2.png')),
      //       // ),
            // Text(
            //   'Create an Account',
            //   style: TextStyle(
            //     color: Color(0xFF333333),
            //     fontSize: getResponWidth(18),
            //     fontWeight: FontWeight.w700,
            //     fontFamily: 'OpenSans',
            //   ),
            // ),
      //       Form(
      //           child: Column(
      //         children: [
      //           TextField(
      //             keyboardType: TextInputType.emailAddress,
      //             decoration: InputDecoration(
      //                 // hintText: 'Email',
      //                 // hintStyle: TextStyle(
      //                 //   color: Color(0xFFB3B3B3)
      //                 // ),

      //                 fillColor: Color(0xFFFFFFFF),
      //                 filled: true,
      //                 labelText: 'Email',
      //                 labelStyle: TextStyle(color: Color(0xFFB3B3B3)),
      //                 enabledBorder: OutlineInputBorder(
      //                     borderSide: BorderSide(
      //                       color: Color(0xFFE6E6E6),
      //                     ),
      //                     gapPadding: getResponWidth(16))),
      //           ),
      //           SizedBox(height: getResponHeight(50),),
      //           TextField(
      //             keyboardType: TextInputType.emailAddress,
      //             decoration: InputDecoration(
      //                 fillColor: Color(0xFFFFFFFF),
      //                 filled: true,
      //                 labelText: 'Email',
      //                 labelStyle: TextStyle(color: Color(0xFFB3B3B3)),
      //                 enabledBorder: OutlineInputBorder(
      //                     borderSide: BorderSide(
      //                       color: Color(0xFFE6E6E6),
      //                     ),
      //                     gapPadding: getResponWidth(16))),
      //           ),

      //           //
                
      //         ],
      //       ))
      //     ],
      //   ),
      // )),
    