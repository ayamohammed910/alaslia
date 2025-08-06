import 'package:alaslia_app/home/presentation/widgets/custom_home_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHomeHorzontalScroll extends StatelessWidget {
  CustomHomeHorzontalScroll({super.key});

  final List<String> orders = [
    'assets/images/476648596_1059854885953159_1141226820237657551_n.png',
    'assets/images/image 381 (1).png',
    'assets/images/image 381 (2).png',
    'assets/images/image 381 (1).png',
    'assets/images/image 381 (2).png',
    'assets/images/image 381 (1).png',
    'assets/images/image 381 (2).png',
  ];



  final List<String> nameOrder = [
    'العروض',
    'عبايات سادة',
    'عبايات مناسبات',
    'عبايات ملونة',
    'عبايات سادة',
    'عبايات مناسبات',
    'عبايات ملونة',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(4.0),
                        child: Card(
                          color: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                          ),
                          child:
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                    orders[index],
                                    width: 50,
                                    height: 70,
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                SizedBox(height: 5,),

                                CustomText(title: nameOrder[index],
                                    textsize: 10,
                                    textcolor: Colors.black,
                                    font: FontWeight.bold,
                                    textalign: TextAlign.center)
                                ],
                              ),

                        ),

                );
              }
          ),

    );
  }
}
