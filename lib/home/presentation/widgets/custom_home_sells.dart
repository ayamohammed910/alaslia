import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_home_text.dart';

class FavoriteHome extends StatelessWidget {
  const FavoriteHome({super.key});

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
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/image.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  bottom: -5,
                                  left: 0,
                                  child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        'assets/images/Heart.png',
                                        height: 36,
                                      ))),
                              Positioned(
                                  top: 10, // Distance from the bottom
                                  left: 10, // Distance from the right
                                  child: Image.asset(
                                    'assets/images/New label.png',
                                    height: 24,
                                    width: 40,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Image.asset('assets/images/Rating Icon.png'),
                              SizedBox(width: 5,),
                              CustomText(
                                title: '44 (42)',
                                textsize: 12,
                                textcolor: Color.fromRGBO(0, 0, 0, 1),
                                font: FontWeight.normal,
                                textalign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                        CustomText(
                          title: 'تصميم متجر فزة',
                          textsize: 12,
                          textcolor: Color.fromRGBO(155, 155, 155, 1),
                          font: FontWeight.normal,
                          textalign: TextAlign.right,
                        ),
                        CustomText(
                          title: 'Abaya soft coton',
                          textsize: 14,
                          textcolor: Colors.black,
                          font: FontWeight.normal,
                          textalign: TextAlign.right,
                        ),
                        CustomText(
                          title: '288 ر.س',
                          textsize: 12,
                          textcolor: Color.fromRGBO(0, 0, 0, 1),
                          font: FontWeight.normal,
                          textalign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                ));
          }),
    );
  }
}
