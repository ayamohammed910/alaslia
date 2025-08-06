import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_home_text.dart';

class ReelsHome extends StatelessWidget {
  const ReelsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  color: Colors.white, // Set white background color
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Screenshot 2025-02-18 at 2.32.53 AM.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [

                              Positioned(
                                  top: 10, // Distance from the bottom
                                  right: 10, // Distance from the right
                                  child: Image.asset(
                                    'assets/images/reel icon.png',
                                    height: 24,
                                    width: 40,
                                  )),




                          Positioned(
                            // top: 10, // Distance from the bottom
                            bottom: 20, // Distance from the right
                            child:


                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/logo3.png',
                                      height: 30,
                                      width: 30,),
                                    SizedBox(width: 5,),
                                    Image.asset('assets/images/فزّة.png',
                                      height: 30,
                                      width: 30,),




                                    SizedBox(width: 10,),

                                    Container(

                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(5, 20, 49, 0.5),
                                        borderRadius:BorderRadius.circular(3),),
                                          height: 28,

                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: CustomText(title:'Abaya shifon algaria',
                                              textsize: 12,
                                              textcolor: Colors.white,
                                              font: FontWeight.bold,
                                              textalign: TextAlign.left,
                                            ),
                                          ),


                                    ),

                                  ],
                                ),
                              ),
                            )

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ));
          }),
    );
  }
}

