import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CityCardScroll extends StatelessWidget {
  var assets;
  VoidCallback function;

  CityCardScroll({super.key , required this.assets , required this.function});
  
  

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;
    // TODO: implement build
    return    SizedBox(
      width: screenWidth * 0.9,
      height: screenHeight / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: assets.length,
        itemBuilder: (BuildContext context, int index) {
          return LayoutBuilder(
              builder: (contexts, constraints) {
                var mediaQuer = MediaQuery.of(contexts);
                var width = mediaQuery.size.width;
                var height = mediaQuer.size.height;

                print(height);
                return SizedBox(
                  width: screenWidth / 2.5,
                  child: Card(
                      elevation: 0,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding:EdgeInsets.zero,
                        onPressed: (){function();},
                        child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              assets[index]
                                              ["image"]!),
                                          fit: BoxFit.cover)),
                                ),
                                height: height * 0.26,
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(8.0),
                                  child: Text(
                                      assets[index]["text"]!,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      )),
                                ),
                              ),
                            ]),
                      )),
                );
              });
        },
      ),
    );
  }
}