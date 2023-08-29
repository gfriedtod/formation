
import 'package:flutter/material.dart';

class CardScroll extends StatelessWidget {
  var ohter_buildings;

   CardScroll({Key? key , required this.ohter_buildings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;
    // TODO: implement build
   return    SizedBox(
     width: screenWidth * 0.9,
     height: screenHeight / 4,
     child: ListView.builder(
       scrollDirection: Axis.horizontal,
       itemCount: ohter_buildings.length,
       itemBuilder: (BuildContext context, int index) {
         return LayoutBuilder(
             builder: (contexts, constraints) {
               var mediaQuer = MediaQuery.of(contexts);
               var width = mediaQuery.size.width;
               var height = mediaQuer.size.height;

               print(height);
               return SizedBox(
                 width: screenWidth / 2,
                 height: screenHeight / 3,
                 child: Card(
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
                                           ohter_buildings[index]
                                           ["image"]!),
                                       fit: BoxFit.cover)),
                             ),
                             height: height * 0.18,
                           ),
                         ])),
               );
             });
       },
     ),
   );
  }
}
