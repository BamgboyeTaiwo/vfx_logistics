import 'package:flutter/material.dart';
import 'package:vfx_logistics/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF167A5C),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  width: getResponWidth(411),
                  child: Container(
                    height: getResponHeight(350),
                    color: Color(0xFF167A5C),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getResponWidth(20),
                              top: getResponHeight(38)),
                          child: Row(
                            children: [
                              Image(
                                  image: AssetImage('assets/images/menu.png')),
                              Spacer(),
                              Image(
                                  image: AssetImage(
                                      'assets/images/notifications.png'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getResponWidth(22),
                              top: getResponHeight(95)),
                          child: RichText(
                            text: TextSpan(
                                text: 'Track',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFFFFFFFF),
                                  fontSize: getResponWidth(24),
                                  fontFamily: 'MontserratRegular',
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\n your ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFFFFFFF),
                                        fontSize: getResponWidth(24),
                                        fontFamily: 'MontserratRegular',
                                      )),
                                  TextSpan(
                                      text: ' Shipment',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFFFFFFFF),
                                        fontSize: getResponWidth(24),
                                        fontFamily: 'MontserratRegular',
                                      ))
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getResponHeight(46),
                              left: getResponWidth(16)),
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Container(
                                width: getResponWidth(325),
                                height: getResponHeight(44),
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      // constraints: BoxConstraints(
                                      //     minHeight: getResponHeight(44),
                                      //     minWidth: getResponWidth(325)),
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
                              ),
                              SizedBox(
                                width: getResponWidth(10),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(getResponHeight(6)),
                                  color: Color(0xFFFFE8B2),
                                ),
                                width: getResponWidth(44),
                                height: getResponHeight(44),
                                child: Image(
                                    image:
                                        AssetImage('assets/images/search.png')),
                              )
                              //
                            ],
                          ),
                        ),

                        //,
                      ],
                    ),
                  )),

              //
              Positioned(
                  top: getResponHeight(108),
                  // right: getResponWidth(30),
                  left: getResponWidth(221),
                  child:
                      Image(image: AssetImage('assets/images/robotsmall.png'))),

              Positioned(
                  top: getResponHeight(119),
                  // right: getResponWidth(30),
                  left: getResponWidth(278),
                  child:
                      Image(image: AssetImage('assets/images/robotbig.png'))),

              Positioned(
                  top: 350,
                  height: getResponHeight(463),
                  width: getResponWidth(411),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: getResponWidth(16), vertical: getResponHeight(36)),
                    // height: getResponHeight(350),
                    color: Color(0xFFE5E5E5),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1),
                          child: Row(
                            children: [
                              Container(
                                color: Colors.white,
                                height: getResponHeight(181),
                                width: getResponWidth(181),
                                child: Text(
                                  'Shipment',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Spacer(),
                              Container(
                                color: Colors.white,
                                height: getResponHeight(181),
                                width: getResponWidth(181),
                                child: Text('Tracking'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: getResponHeight(16)),
                          child: Row(
                            children: [
                              Container(
                                color: Colors.white,
                                height: getResponHeight(181),
                                width: getResponWidth(181),
                                child: Text(
                                  'Message',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: getResponHeight(16),
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF666666)
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                color: Colors.white,
                                height: getResponHeight(181),
                                width: getResponWidth(181),
                                child: Text(
                                  'Settings', 
                                  
                                  style: TextStyle(
                                    fontSize: getResponHeight(16),
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF666666)
                                  ),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}






























 // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // children: [
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: getResponWidth(20),
          //       top: getResponHeight(38),
          //       right: getResponWidth(20)),
          //   child: Row(
          //     children: const <Widget>[
          //       Image(
          //         image: AssetImage('assets/images/menu.png'),
          //         // height: getResponHeight(16),
          //         // width: getResponWidth(24),
          //       ),

          //       Spacer(),

          //       // SizedBox(
          //       //   height: getResponHeight(16),
          //       //   width: getResponWidth(24),
          //       //   child: Container(
          //       //     color: Colors.yellow,
          //       //   ),
          //       // ),
          //       Image(image: AssetImage('assets/images/notifications.png'))
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: getResponWidth(22), top: getResponHeight(149)),
          //   child: RichText(
          //     text: TextSpan(
          //         text: 'Track',
          //         style: TextStyle(
          //           fontWeight: FontWeight.w800,
          //           color: Color(0xFFFFFFFF),
          //           fontSize: getResponWidth(24),
          //           fontFamily: 'MontserratRegular',
          //         ),
          //         children: <TextSpan>[
          //           TextSpan(
          //               text: '\n your ',
          //               style: TextStyle(
          //                 fontWeight: FontWeight.w400,
          //                 color: Color(0xFFFFFFFF),
          //                 fontSize: getResponWidth(24),
          //                 fontFamily: 'MontserratRegular',
          //               )),
          //           TextSpan(
          //               text: ' Shipment',
          //               style: TextStyle(
          //                 fontWeight: FontWeight.w800,
          //                 color: Color(0xFFFFFFFF),
          //                 fontSize: getResponWidth(24),
          //                 fontFamily: 'MontserratRegular',
          //               ))
          //         ]),
          //   ),
          // ),

          // //
          // Positioned(
          //     top: getResponHeight(119),
          //     // right: getResponWidth(30),
          //     left: getResponWidth(278),
          //     child: Image(image: AssetImage('assets/images/robotbig.png'))),
          // Positioned(
          //     top: getResponHeight(108),
          //     // right: getResponWidth(30),
          //     left: getResponWidth(221),
          //     child: Image(image: AssetImage('assets/images/robotsmall.png'))),
          // //,

          // Padding(
          //   padding: EdgeInsets.only(
          //       top: getResponHeight(253), left: getResponWidth(16)),
          //   child: Wrap(
          //     direction: Axis.horizontal,
          //     children: [
          //       Container(
          //         width: getResponWidth(325),
          //         height: getResponHeight(44),
          //         child: TextField(
          //           keyboardType: TextInputType.text,
          //           decoration: InputDecoration(
          //               // constraints: BoxConstraints(
          //               //     minHeight: getResponHeight(44),
          //               //     minWidth: getResponWidth(325)),
          //               fillColor: Color(0xFFFFFFFF),
          //               filled: true,
          //               labelText: 'Usernam or Password',
          //               labelStyle: TextStyle(
          //                   color: Color(0xFFB3B3B3),
          //                   fontFamily: 'MontserratRegular'),
          //               enabledBorder: OutlineInputBorder(
          //                   borderSide: BorderSide(
          //                     color: Color(0xFFE6E6E6),
          //                   ),
          //                   borderRadius:
          //                       BorderRadius.circular(getResponWidth(5)),
          //                   gapPadding: getResponWidth(16))),
          //         ),
          //       ),
          //       SizedBox(
          //         width: getResponWidth(10),
          //       ),

          //       Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(getResponHeight(6)),
          //           color: Color(0xFFFFE8B2),
          //         ),
          //         width: getResponWidth(44),
          //         height: getResponHeight(44),
          //         child: Image(image: AssetImage('assets/images/search.png')),
          //       )
          //       //
          //     ],
          //   ),
          // ),
          
          // Positioned(
          //   // width: 370,
          //   // height: 400,
          //   top: 300,
            
          //   child: Expanded(
          //     child: Container(
          //       color:Colors.red,
          //       child: Wrap(
          //         children: [
          //           Row(
          //             children: [
          //               Expanded(
          //                 child:Container(
          //                 color: Colors.amber,
          //                 child: Text('fsarctfgdhjqdbcgvhbjnqmalkosdhugy'),
          //               ), ),
          //               Spacer(),
          //               Container(
          //                 color: Colors.amber,
          //                 child: Text('fsarctfgdhjqdbcgvhbjnqmalkosdhugy'),
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   )
          //   )
          
          
          
          
          
          
          
          // Positioned(
          //   top: 300,
          //   // top: getResponHeight(370),
          //   // height: getResponHeight(400),
          //   child: Container(
              
          //     color: Colors.yellow,
          //       child: Wrap(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.symmetric(
          //             horizontal: getResponWidth(16),
          //             vertical: getResponHeight(36)),
          //         child: Column(
          //           children: [

          //             Container(
          //               color: Colors.black,
          //               child: Row(
          //                 children: [

          //                 ],
          //               ),
          //             )
                      

          //           ],
          //         ),
          //       )
        //   //     ],
        //   //   )),
        //   // )

        //   //
        // ],
     