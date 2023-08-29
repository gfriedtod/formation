import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation/composant/card_scroll.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;
    // TODO: implement build
    var ohter_buildings = [
      {
        "image": "assets/building7.jpeg",
      },
      {
        "image": "assets/building8.jpeg",
      },
      {
        "image": "assets/building9.jpeg",
      },
      {
        "image": "assets/building10.jpeg",
      },
      {
        "image": "assets/building11.jpeg",
      },
      {
        "image": "assets/building12.jpeg",
      },
      {
        "image": "assets/building13.jpeg",
      }
    ];
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              "Trips Details",
              style: GoogleFonts.roboto(fontWeight: FontWeight.w500 , fontSize: 30),
            )
          ]
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.add_location),
                  Text("Abudaby, Dubail", style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 20 , color: Colors.deepPurple)),

                ]
              ),
              SizedBox(height: 10),
              CardScroll(ohter_buildings: ohter_buildings),
              Text(
                "1 st time in Dubai ",
                style: GoogleFonts.roboto(fontWeight: FontWeight.w500 , fontSize: 30),
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. At id inventore labore molestiae mollitia nemo perspiciatis repudiandae ut veritatis voluptatibus. Ab at commodi dignissimos dolore est ex facilis maxime quo suscipit vero. Atque culpa doloremque, expedita illo ipsa maiores maxime, mollitia nulla numquam pariatur quam quod soluta sunt totam, voluptates.", style: GoogleFonts.roboto()),
              Card(
                  elevation: 0,
                  child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        ohter_buildings[4]
                                        ["image"]!),
                                    fit: BoxFit.cover)),
                          ),
                          height: screenHeight * 0.18,
                        ),
                      ])),
              Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. At id inventore labore molestiae mollitia nemo perspiciatis repudiandae ut veritatis voluptatibus. Ab at commodi dignissimos d.", style: GoogleFonts.roboto()),
              SizedBox(
                  width: screenWidth*0.9,

               //
                  height: 50,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                      //borderRadius: BorderRadius.circular(10),
                    color: Colors.black,

                      onPressed: (){}, child: Text("Book Now" , style: GoogleFonts.roboto(color: Colors.white,)))
              )
            ],

          ),
        ),
      ),
    );
  }

}