import 'package:flutter/material.dart';
import 'package:vfx_logistics/loginpage.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Container(
          // color: Colors.red,
          // height: MediaQuery.of(context).size.height * 0.8,
          // width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.only(top: 60, bottom: 10, left: 20, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  // alignment: Alignment(0.0, 0.0),
                  child: Image(image: AssetImage('assets/images/Layer2.png')),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Forgot password? We got ya!',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'OpenSansRegular',
                            fontSize: 22,
                            color: Color(0xFF333333)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child: Text(
                        'Please, enter your registered phone number or email to reset your password. ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'OpenSans',
                            fontSize: 18,
                            color: Color(0xFF4D4D4D)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFE6E6E6))),

                              // border: UnderlineInputBorder(),
                              border: OutlineInputBorder(),
                              labelText: 'Phone Number or Email',
                              labelStyle: TextStyle(color: Color(0xFFB3B3B3)))),
                    ),

                    SizedBox(height: 30),

                    //button
                    RawMaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage())));
                        },
                        child: const Text('RESET'),
                        fillColor: const Color(0xFF1A936F),
                        hoverColor: const Color.fromARGB(255, 39, 211, 160),
                        constraints:
                            const BoxConstraints(minWidth: 379, minHeight: 47),
                        textStyle: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: "OpenSans",
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)))
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
