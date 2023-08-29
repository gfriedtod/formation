import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation/composant/card_scroll.dart';
import 'package:formation/composant/city_card_scrool.dart';
import 'package:formation/composant/user_card_scroll.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;
    print(screenHeight);
    var assets = [
      {
        "image": "assets/building.jpeg",
        "text": "discover this building in manathan "
      },
      {
        "image": "assets/building2.jpeg",
        "text": "that is a awseome monument you cant see in central park"
      },
      {
        "image": "assets/building4.jpeg",
        "text":
            "if you want to take break you cant reserve a roome in they Charle Rich instute"
      },
      {
        "image": "assets/building5.jpeg",
        "text":
            "if you want to take break you cant reserve a roome in they Charle Rich instute"
      }
    ];
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
    var colaborators = [
      {"image": "assets/personne1.jpeg", "name": "Jason"},
      {"image": "assets/personne2.jpeg", "name": "Anonimou"},
      {"image": "assets/personne3.jpeg", "name": "Paul"},
      {"image": "assets/personne4.jpeg", "name": "Andre"},
      {"image": "assets/personne6.jpeg", "name": "Carl"}
    ];
    return Scaffold(
        appBar: AppBar(

            // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            automaticallyImplyLeading: false,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(
                "Explore Citys ",
                style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
              ),
              CircleAvatar(
                child: Icon(Icons.person),
              )
            ])),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: screenWidth * 0.9,
                //padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SearchBar(
                        elevation: MaterialStateProperty.all(0.4),
                        leading: Icon(
                          Icons.search_sharp,
                          color: Color(0xFF605C5C),
                        ),
                        hintText: "Search your city",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Recent city",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500, fontSize: 25)),
                   CityCardScroll(assets: assets, function: () { Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___) => DetailsPage())); },),
                      SizedBox(
                        height: 20,
                      ),
                      Text("More article",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500, fontSize: 25)),
                    CardScroll(ohter_buildings: ohter_buildings),
                      Text("We colaborators",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500, fontSize: 25)),
                    UserCardScroll(colaborators: colaborators)
                    ]),
              ),
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
