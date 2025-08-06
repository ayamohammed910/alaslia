import 'package:flutter/cupertino.dart';

import 'custom_home_text.dart';

class CustomHomeTitleSection extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final String seeAll;
  const CustomHomeTitleSection({super.key,
    required this.mainTitle,
     this.subTitle="",
     this.seeAll=""});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Spacer(flex: 1,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomText(title: seeAll,
              textsize: 12,
              textcolor: Color.fromRGBO(34, 34, 34, 1),
              font: FontWeight.normal,
              textalign: TextAlign.right),
        ),
        Spacer(flex: 10,),

        Align(
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomText(title:mainTitle,
                    textsize: 18,
                    textcolor: Color.fromRGBO(34, 34, 34, 1),
                    font: FontWeight.bold,
                    textalign: TextAlign.right),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomText(title: subTitle,
                    textsize: 12,
                    textcolor: Color.fromRGBO(155, 155, 155, 1),
                    font: FontWeight.normal,
                    textalign: TextAlign.right),
              ),


            ],

          ),
        ),
        Spacer(flex: 1,),
      ],
    );
  }
}
