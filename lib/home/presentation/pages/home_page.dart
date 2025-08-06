import 'package:alaslia_app/home/presentation/widgets/custom_home_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/body_home_page.dart';
import '../widgets/custom_home_bottom_navBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get onPressed => null;
  int _currentIndex = 0;
  final List<Widget> _screens = [
    BodyHomePage(),
    BodyHomePage(),
    BodyHomePage(),
    BodyHomePage(),
    BodyHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(title: 'Al asliaa',
              textsize: 32, textcolor: Colors.black,
              font: FontWeight.bold, textalign: TextAlign.center,),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/images/notification pill.png'),
          onPressed: () {
            // Action for left icon
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/Search.png'),
            onPressed: () {
              // Action for right icon
            },
          ),
        ],
      ),
      body:_screens[_currentIndex],



      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}
