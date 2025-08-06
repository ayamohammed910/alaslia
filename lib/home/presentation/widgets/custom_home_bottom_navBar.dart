import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Color.fromRGBO(246, 246, 246, 1),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          items: [

            BottomNavigationBarItem(
              icon: Image.asset('assets/images/home.png',
                color: currentIndex == 0 ? Colors.black : Colors.grey,
              ),
              label: 'الرئيسية',
            ),
             BottomNavigationBarItem(
               icon: Image.asset('assets/images/Category.png',
                 color: currentIndex == 1 ? Colors.black : Colors.grey,
               ),
               label: 'الاقسام',
            ),


             BottomNavigationBarItem(
              icon: Image.asset('assets/images/Outline.png',
                color: currentIndex == 2 ? Colors.black : Colors.grey,
              ),
               label: 'السلة',
            ),
             BottomNavigationBarItem(
              icon: Image.asset('assets/images/Heart.png',
                color: currentIndex == 3 ? Colors. black : Colors.grey,
              ),
               label: 'المفضلة',


            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/account_circle.png',
                color: currentIndex == 4 ? Colors.black : Colors.grey,
              ),
              label: 'ملفي',



            ),
          ],
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: Colors.black,
          selectedFontSize:15,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          elevation: 8.0,
        ),
      ),
    );
  }
}