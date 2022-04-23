import 'package:flutter/material.dart';
import 'package:vfx_logistics/SignUp/signup.dart';
import 'package:vfx_logistics/loginpage.dart';
import 'package:vfx_logistics/size_config.dart';

//Login Button for On boarding Pages
class ButtonGreen extends StatelessWidget {
  const ButtonGreen({
    Key? key,
    required this.buttontext,
  }) : super(key: key);

  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {
          routeLogin(context);
        },
        child: Text(buttontext),
        fillColor: const Color(0xFF1A936F),
        hoverColor: const Color.fromARGB(255, 39, 211, 160),
        // constraints: const BoxConstraints(minWidth: 379, minHeight: 47),
        textStyle: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontFamily: "OpenSans",
            fontSize: 14,
            fontWeight: FontWeight.w700),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getResponHeight(6))));
  }
}

class ButtonWhite extends StatelessWidget {
  const ButtonWhite({
    Key? key,
    required this.buttontext,
  }) : super(key: key);

  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {
          route(context);
        },
        child: Text(buttontext),
        fillColor: const Color(0xFFFFFFFF),
        hoverColor:  Color(0xFF1A936F),
        // constraints: const BoxConstraints(minWidth: 379, minHeight: 47),
        textStyle: const TextStyle(
            color: Color(0xFF114B5F),
            fontFamily: "OpenSans",
            fontSize: 14,
            fontWeight: FontWeight.w700),
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFC4C4C4), width: 2),
            borderRadius: BorderRadius.circular(6.0)));
  }
}

// class ButtonGreenA extends StatelessWidget {
//   const ButtonGreenA({
//     Key? key,
//     required this.buttontext,
//     required this.context2

//   }) : super(key: key);

//   final String buttontext;
//   final dynamic context2;

//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//         onPressed: () {
//           route(context2);
//         },
//         child: Text(buttontext),
//         fillColor: const Color(0xFF1A936F),
//         hoverColor: const Color.fromARGB(255, 39, 211, 160),
//         // constraints: const BoxConstraints(minWidth: 379, minHeight: 47),
//         textStyle: const TextStyle(
//             color: Color(0xFFFFFFFF),
//             fontFamily: "OpenSans",
//             fontSize: 14,
//             fontWeight: FontWeight.w700),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(getResponHeight(6))));
//   }
// }

onpressed() {
  return print('clicked');
}

route(context) {
  return Navigator.push(
      context, MaterialPageRoute(builder: ((context) => SignUp())));
}

routeLogin(context) {
  return Navigator.push(
      context, MaterialPageRoute(builder: ((context) => LoginPage())));
}
