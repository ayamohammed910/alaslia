import 'package:flutter/cupertino.dart';

class CustomHomeBanner extends StatelessWidget {
  final double height;
  final String image;
  final double width;

  const CustomHomeBanner({super.key,
    required this.height,
    required this.image,
    this.width=double.infinity});


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
        ));
  }
}
