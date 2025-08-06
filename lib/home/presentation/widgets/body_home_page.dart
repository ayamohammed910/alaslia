import 'package:alaslia_app/home/presentation/widgets/reels_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_home_banner.dart';
import 'custom_home_divier.dart';
import 'custom_home_horzontal_scroll.dart';
import 'custom_home_shops.dart';
import 'custom_home_text.dart';
import 'custom_home_title_section.dart';
import 'custom_home_sells.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 26,
            color: Color.fromRGBO(237, 224, 212, 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                      title:
                          'خصم خاص 20% : كود الخصم EDF15  ثانية 04 دقيقة 15 ساعة 11',
                      textsize: 12,
                      textcolor: Color.fromRGBO(0, 0, 0, 1),
                      font: FontWeight.normal,
                      textalign: TextAlign.center),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/images/svg8.png'),
                ],
              ),
            ),
          ),
          CustomHomeBanner(
            height: 507,
            image: 'assets/images/main banner for disscount.png',
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 120, // Limit the height
              child: CustomHomeHorzontalScroll(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomHomeBanner(
              height: 130,
              image: 'assets/images/Banner.png',
            ),
          ),

          CustomHomeBanner(
            height: 130,
            image: 'assets/images/banner2.png',
          ),

          Padding(
              padding: const EdgeInsets.all(12.0), child: CustomHomeDivier()),

          //
          CustomHomeTitleSection(
            mainTitle: 'الأعلي مبيعا',
            subTitle: 'العبايات الاعلي مبيعا علي هيرز تفقدها الأن',
            seeAll: 'مشاهدة الكل',
          ),

          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SizedBox(height: 270, child: FavoriteHome()),
              )),

          Padding(
              padding: const EdgeInsets.all(12.0), child: CustomHomeDivier()),
          CustomHomeTitleSection(
            mainTitle: 'المصممين',
            subTitle: 'يمكنك الان متابعة جميع متاجر العبايات',
            seeAll: 'مشاهدة الكل',
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SizedBox(
                    height: 180,
                    child: CustomHomeShops(
                      logo: 'assets/images/logo.png',
                      productName: 'نواعم',
                      rate: '4.9 ',
                    )),
              )),

          Padding(
              padding: const EdgeInsets.all(12.0), child: CustomHomeDivier()),
          CustomHomeTitleSection(
            mainTitle: 'المتاجر',
            subTitle: 'يمكنك الان متابعة جميع متاجر العبايات',
            seeAll: 'مشاهدة الكل',
          ),

          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SizedBox(
                    height: 180,
                    child: CustomHomeShops(
                      logo: 'assets/images/logo1.png',
                      productName: 'Abaya ',
                      rate: '4.7',
                    )),
              )),

          Padding(
              padding: const EdgeInsets.all(12.0), child: CustomHomeDivier()),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Image.asset('assets/images/Group.png'),
                  SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    title: 'Herz Reels',
                    textsize: 18,
                    textcolor: Color.fromRGBO(0, 0, 0, 1),
                    font: FontWeight.bold,
                    textalign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Container(
                child: SizedBox(height: 340, child: ReelsHome()),
              )),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: CustomHomeBanner(
              height: 130,
              image:
                  'assets/images/ray-ban-rb3548-001-size-54-sunglasses_ray-ban-rb3548-001-size-54-sunglasses_M_7274_1_Image_PLA 1 (1).png',
            ),
          ),

          Padding(
              padding: const EdgeInsets.all(12.0), child: CustomHomeDivier()),

          //
          CustomHomeTitleSection(
            mainTitle: 'مختارات هيرز',
            subTitle: 'العبايات الاعلي مبيعا علي هيرز تفقدها الان',
            seeAll: 'مشاهدة الكل',
          ),

          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SizedBox(height: 270, child: FavoriteHome()),
              )),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomHomeBanner(
              height: 130,
              image: 'assets/images/Frame 2609640.png',
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Row(
              children: [
                CustomHomeBanner(
                  height: 80,
                  width: 190,
                  image: 'assets/images/Frame 1820547778.png',
                ),
                SizedBox(
                  width: 10,
                ),
                CustomHomeBanner(
                  height: 80,
                  width: 190,
                  image: 'assets/images/Frame 2609640.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: CustomHomeBanner(
              height: 130,
              image:
                  'assets/images/ray-ban-rb3548-001-size-54-sunglasses_ray-ban-rb3548-001-size-54-sunglasses_M_7274_1_Image_PLA 1 (1).png',
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: CustomHomeBanner(
              height: 200,
              image: 'assets/images/Frame 2609626.png',
            ),
          ),
        ],
      ),
    );
  }
}
