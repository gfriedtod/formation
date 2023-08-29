import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCardScroll extends StatelessWidget {
  var colaborators;

  UserCardScroll({Key? key , required this.colaborators}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;
    // TODO: implement build
    return   SizedBox(
      width: screenWidth * 0.9,
      height: screenHeight / 6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colaborators.length,
        itemBuilder: (BuildContext context, int index) {
          return LayoutBuilder(
              builder: (contexts, constraints) {
                var mediaQuer = MediaQuery.of(contexts);
                var width = mediaQuery.size.width;
                var height = mediaQuer.size.height;

                print(height);
                return SizedBox(
                  width: screenWidth / 5,
                  height: screenHeight / 3,
                  child: Card(
                      elevation: 0,
                      child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    colaborators[index]
                                    ["image"]!),
                                // child: Container(
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(10),
                                //       image: DecorationImage(
                                //           image:
                                //           fit: BoxFit.cover)),
                                // ),
                              ),
                              //height: height * 0.18,
                            ),
                            Expanded(
                                child: Text(
                                  colaborators[index]["name"]!,
                                  style: GoogleFonts.roboto(),
                                  textAlign: TextAlign.center,
                                ))
                          ])),
                );
              });
        },
      ),
    ) ;
  }
}