import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/ui/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: body(),
    ));
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 60, horizontal: 25),
      child: Center(
        child: Column(
          children: [
            SvgPicture.asset('assets/icons/carrot_icon.svg'),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: form(),
            )
          ],
        ),
      ),
    );
  }

  Widget form() {
    return Container(
        child: Column(
      children: [
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign Up',
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Color(0xFF030303),
                    fontWeight: FontWeight.w600,
                  )),
              Text('Enter your credentials to continue',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Color(0xFF7C7C7C),
                  )),
            ],
          ),
        ),
        formItem(),
        terms(),
        signUpBtn(context),
        login()
      ],
    ));
  }

  Widget formItem() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Username',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  )),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(122, 124, 124, 124)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF53B175))),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  )),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(122, 124, 124, 124)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF53B175))),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  )),
              TextFormField(
                obscureText: !_visible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      splashRadius: 5.0,
                      icon: Icon(
                        _visible ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF7C7C7C),
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _visible = !_visible;
                        });
                      }),
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(122, 124, 124, 124)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF53B175))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget terms() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: TextButton(
          onPressed: () {},
          child: Wrap(direction: Axis.horizontal, children: [
            Text('By continuing you agree to our',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Color(0xFF7C7C7C),
                )),
            Text(
              ' Terms of Service ',
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Color(0xFF53B175),
              ),
            ),
            Text(
              'and ',
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Color(0xFF7C7C7C),
              ),
            ),
            Text(
              'Privacy Policy.',
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Color(0xFF53B175),
              ),
            ),
          ]),
        ));
  }

  Widget signUpBtn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF53B175),
        ),
        child: TextButton(
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: GoogleFonts.roboto(
                  color: Color(0xFFF6F1FB),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )));
  }

  Widget login() {
    return Center(
      child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: GoogleFonts.roboto(
                    color: Color(0xFF030303),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                ' Log In',
                style: GoogleFonts.roboto(
                    color: Color(0xFF53B175),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              )
            ],
          )),
    );
  }
}
