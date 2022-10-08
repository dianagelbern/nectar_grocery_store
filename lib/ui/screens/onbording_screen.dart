import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/ui/screens/sign_up_screen.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }
}

Widget body(BuildContext context) {
  return Stack(
    children: [
      Image.asset(
        'assets/images/welcome_person.png',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
      ),
      Container(
        margin: EdgeInsets.only(bottom: 80, left: 30, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/carrot_icon_w.svg'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    welcomeText('Welcome'),
                    welcomeText('to our store'),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 15),
                      child: Text('Get your groceries in as fast as one hour',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Color.fromARGB(137, 252, 252, 252),
                          )),
                    )
                  ],
                ),
              ),
              getStartedBtn(context)
            ],
          ),
        ),
      )
    ],
  );
}

Widget welcomeText(String text) {
  return Text(text,
      style: GoogleFonts.roboto(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ));


}

Widget getStartedBtn(BuildContext context) {
  return Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF53B175),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.roboto(
                      color: Color(0xFFF6F1FB),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )));
}
