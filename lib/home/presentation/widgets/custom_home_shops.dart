import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_home_text.dart';

class CustomHomeShops extends StatelessWidget {
  final String logo ;
  final String productName ;
  final String rate ;




  const CustomHomeShops({super.key,
    required this.logo,
    required this.productName,
    required this.rate});

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
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:Container(
                        width: 130,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/last added products.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                bottom: 0,
                                left: 40,
                                child:Center(
                                  child: Container(
                                    width: 50,
                                    color: Color.fromRGBO(237, 224, 212, 1),
                                    child: CustomText(title: 'تفقد الجديد ',
                                        textsize: 10,
                                        textcolor: Color.fromRGBO(5, 5, 5, 1),
                                        font: FontWeight.normal,
                                        textalign: TextAlign.center,
                                    background: Color.fromRGBO(237, 224, 212, 1),),
                                  ),
                                )
                            ),

                            Positioned(
                               // top: 10, // Distance from the bottom
                                bottom: 30, // Distance from the right
                                child:
                                Container(
                                  color: Color.fromRGBO(255, 255, 255, 0.8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      children: [
                                        Image.asset(logo,
                                          height: 20,
                                          width: 20,),

                                        CustomText(title: productName,
                                          textsize: 12,
                                          textcolor: Color.fromRGBO(5, 5, 5, 1),
                                          font: FontWeight.bold,
                                          textalign: TextAlign.right,
                                         ),
                                        SizedBox(width: 20,),

                                         Container(

                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                            borderRadius:BorderRadius.circular(3),),

                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,

                                                children: [
                                                  CustomText(title:rate,
                                                    textsize: 12,
                                                    textcolor: Color.fromRGBO(5, 5, 5, 1),
                                                    font: FontWeight.bold,
                                                    textalign: TextAlign.left,
                                                  ),

                                                  Image.asset('assets/images/Rating Icon.png',
                                                    height: 24,
                                                    width: 20,),
                                                ],

                                              ),

                                            ),

                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        )
            )));
          }
      ),

    );
  }
}

