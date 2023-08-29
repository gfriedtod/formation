import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation/page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              //  height: screenHeight,
              child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: screenWidth * 0.85,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Email",
                              style: GoogleFonts.roboto(),
                            ),
                            Card(
                              //color: Colors.deepPurple.withOpacity(0.2),
                              elevation: 0.4,
                              margin: EdgeInsets.all(0),

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(


                                  decoration: InputDecoration(
                                    border: InputBorder.none,


                                      hintText: "Enter your email",
                                      hintStyle: GoogleFonts.roboto()),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "password",
                              style: GoogleFonts.roboto(),
                            ),
                            Card(
                              elevation: 0.4,
                              margin: EdgeInsets.all(0),

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  enableSuggestions: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Enter your password",
                                      hintStyle: GoogleFonts.roboto()),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                                width: screenWidth * 0.9,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (_, __, ___) =>
                                                HomePage()));
                                  },
                                  child: Text(
                                    "Login",
                                    style:
                                        GoogleFonts.roboto(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.deepPurple),
                                    //  textStyle: MaterialStateProperty.all()
                                  ),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Do you alrady have an account?",
                                style: GoogleFonts.roboto()),
                            TextButton(
                                style: ButtonStyle(
                                  alignment: Alignment.topLeft,
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(0))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              HomePage()));
                                },
                                child: Text(
                                  "Sign up",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline),
                                ))
                          ]),
                    )
                  ]),
            ),
          ),
        ));
  }
}
