import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = ["p1.jpeg", "p2.jpeg", "p3.jpeg"];

  HomeBodyPopularItem({this.id});

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        //화면이 줄어들 때 너무 적게 줄어드는 것을 방지하기 위해 최소 제약 조건 설정
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            )
          ],
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋앗어욤 위치도 좋아욤 여기 살고싶어욤 화장실도 100개에요 200명이서 씻는것도 전혀 불편하지 않아요 이불도 너무 좋아요",
          style: body1(),
          //maxLine 지정
          maxLines: 3,
          //맥스라인 초과시 ... 처리
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle1(),
            ),
            Text("한국")
          ],
        )
      ],
    );
  }
}
