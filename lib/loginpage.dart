import 'package:flutter/material.dart';
import 'package:vfx_logistics/SignUp/signup.dart';
import 'package:vfx_logistics/components/button.dart';
import 'package:vfx_logistics/forgotpassword.dart';
import 'package:vfx_logistics/homepage.dart';
import 'package:vfx_logistics/size_config.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color(0xFF178060),
        body: SafeArea(
            child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: getResponHeight(24)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/LogologinP.png')),
                    SizedBox(
                      height: getResponHeight(12.5),
                    ),
                    Text(
                      'VFX LOGISTICS',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: getResponHeight(48),
                left: getResponWidth(-44),
                child: Image(
                  image: AssetImage('assets/images/Login3.png'),
                  height: getResponHeight(500),
                  width: getResponWidth(500),
                )),

            //
            Positioned(
              top: getResponHeight(433),
              width: getResponWidth(411),
              height: getResponHeight(370),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(getResponHeight(30)),
                        topRight: Radius.circular(getResponWidth(30)))),
                padding: EdgeInsets.symmetric(horizontal: getResponWidth(16)),
                //
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: getResponHeight(31),
                      ),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: Color(0xFF333333)),
                      ),
                      SizedBox(
                        height: getResponHeight(34),
                      ),
                      Form(
                          child: Column(
                        children: [
                          TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                constraints: BoxConstraints(
                                    maxHeight: getResponHeight(50)),
                                fillColor: Color(0xFFFFFFFF),
                                filled: true,
                                labelText: 'Usernam or Password',
                                labelStyle: TextStyle(
                                    color: Color(0xFFB3B3B3),
                                    fontFamily: 'MontserratRegular'),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE6E6E6),
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        getResponWidth(5)),
                                    gapPadding: getResponWidth(16))),
                          ),
                          SizedBox(
                            height: getResponHeight(10),
                          ),
                          TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                constraints: BoxConstraints(
                                    maxHeight: getResponHeight(50)),
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
                                    borderRadius: BorderRadius.circular(
                                        getResponWidth(5)),
                                    gapPadding: getResponWidth(16))),
                          ),
                          SizedBox(
                            height: getResponHeight(16),
                          ),
                          Row(children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => ForgotPasswordPage())));
                              },
                              child: new Text(
                              'Forgot password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xFF1A1A1A)),
                            ),
                            ),
                            
                            Spacer(),
                            //

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => SignUp())));
                              },
                              child: new Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xFF1A936F)),
                            ),
                            ),
                      
                          ]),

                          //
                          SizedBox(
                            height: getResponHeight(49),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            height: getResponHeight(44),
                            child: RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage())));
                                  ;
                                },
                                child: Text('LOGIN'),
                                fillColor: const Color(0xFF1A936F),
                                hoverColor:
                                    const Color.fromARGB(255, 39, 211, 160),
                                // constraints: const BoxConstraints(minWidth: 379, minHeight: 47),
                                textStyle: const TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: "OpenSans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        getResponHeight(6)))),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            )
          ],
        )));
  }
}

route(context) {
  return Navigator.push(
      context, MaterialPageRoute(builder: ((context) => SignUp())));
}
