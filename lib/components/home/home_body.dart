import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_banner.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    double bodyWidth = getBodyWidth(context);
    
    return Align(
      //SizedBox는 가운데 정렬을 위하여 Align을 사용, Center 위젯도 가능
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular()
          ],
        ),
      ),
    );
  }
}
