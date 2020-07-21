import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:store/utils/margins.dart';
import 'package:store/utils/theme.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        primary: true,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SpaceY(y: 5),
              Row(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        child: Text(
                          "New&Popular",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SpaceX(x: 8),
                  Stack(
                    children: [
                      InkWell(
                        child: Text(
                          "Story",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 1,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: HexColor("#FF4945"),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "9",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          SpaceY(y: 15),
          Stack(
            overflow: Overflow.clip,
            children: [
              Container(
                width: context.screenWidth(),
                height: 345,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/img1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 15,
                child: Container(
                  width: 260,
                  height: 137,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New In",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SpaceY(y: 5),
                      Text(
                        "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SpaceY(y: 5),
                      Text(
                        "\$89.95 USD",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SpaceY(y: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Just Dropped",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceY(y: 15),
          Container(
            width: context.screenWidth(),
            height: 234,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  height: 218,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: HexColor("#F3F3F4"),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            top: 5,
                            left: 10,
                            child: Image.asset("assets/brand1.png"),
                          ),
                          // #35AE60
                          Positioned(
                            bottom: 25,
                            left: 10,
                            child: Container(
                              width: 120,
                              height: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SpaceY(y: 5),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nike ISPA Overreact Sail Multi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                wordSpacing: 5,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "Lowest Ask",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "\$233",
                              style: TextStyle(
                                fontSize: 14,
                                // color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SpaceX(x: 15),
                Container(
                  width: 150,
                  height: 218,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: HexColor("#F3F3F4"),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            top: 5,
                            left: 10,
                            child: Image.asset("assets/brand2.png"),
                          ),
                          // #35AE60
                          Positioned(
                            bottom: 25,
                            left: 10,
                            child: Container(
                              width: 120,
                              height: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image2.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SpaceY(y: 5),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "adidas Yeezy Boost 700 MNVN Bone",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                wordSpacing: 5,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "Lowest Ask",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "\$373",
                              style: TextStyle(
                                fontSize: 14,
                                // color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SpaceX(x: 15),
                Container(
                  width: 150,
                  height: 218,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: HexColor("#F3F3F4"),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            top: 5,
                            left: 10,
                            child: Image.asset("assets/brand3.png"),
                          ),
                          // #35AE60
                          Positioned(
                            bottom: 25,
                            left: 10,
                            child: Container(
                              width: 120,
                              height: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image3.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SpaceY(y: 5),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jordan 5 Retro Alternate Grape",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                wordSpacing: 5,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "Lowest Ask",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "\$252",
                              style: TextStyle(
                                fontSize: 14,
                                // color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SpaceY(y: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Most Popular",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceY(y: 15),
          Container(
            width: context.screenWidth(),
            height: 320,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand2.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$233",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image5.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand3.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$214",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image6.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand1.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$280",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image3.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand4.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$432",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
              ],
            ),
          ),
          SpaceY(y: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Popular Brands",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceY(y: 10),
          Container(
            width: context.screenWidth(),
            height: 110,
            child: ListView(
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 72,
                  height: 112,
                  child: Column(
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          color: greyBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset("assets/brand1.png"),
                        ),
                      ),
                      Text(
                        "Adidas",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SpaceY(y: 4),
                      Text(
                        "All 601",
                        style: TextStyle(fontSize: 11, color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: 72,
                  height: 112,
                  child: Column(
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          color: greyBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset("assets/brand2.png"),
                        ),
                      ),
                      Text(
                        "Nike",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SpaceY(y: 4),
                      Text(
                        "All 601",
                        style: TextStyle(fontSize: 11, color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: 72,
                  height: 112,
                  child: Column(
                    children: [
                      Container(
                        height: 72,
                        width: 100,
                        decoration: BoxDecoration(
                          color: greyBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset("assets/brand3.png"),
                        ),
                      ),
                      Text(
                        "Balenciaga",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SpaceY(y: 4),
                      Text(
                        "All 601",
                        style: TextStyle(fontSize: 11, color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: 72,
                  height: 112,
                  child: Column(
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          color: greyBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset("assets/brand4.png"),
                        ),
                      ),
                      Text(
                        "Jordan",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SpaceY(y: 4),
                      Text(
                        "All 601",
                        style: TextStyle(fontSize: 11, color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: 72,
                  height: 112,
                  child: Column(
                    children: [
                      Container(
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                          color: greyBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset("assets/brand1.png"),
                        ),
                      ),
                      Text(
                        "Vans",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SpaceY(y: 4),
                      Text(
                        "All 601",
                        style: TextStyle(fontSize: 11, color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
              ],
            ),
          ),
          SpaceY(y: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Recomended For You",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceY(y: 15),
          Container(
            width: context.screenWidth(),
            height: 234,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  height: 218,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: HexColor("#F3F3F4"),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            top: 5,
                            left: 10,
                            child: Image.asset("assets/brand1.png"),
                          ),
                          // #35AE60
                          Positioned(
                            bottom: 25,
                            left: 10,
                            child: Container(
                              width: 120,
                              height: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SpaceY(y: 5),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nike ISPA Overreact Sail Multi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                wordSpacing: 5,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "Lowest Ask",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "\$233",
                              style: TextStyle(
                                fontSize: 14,
                                // color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SpaceX(x: 15),
                Container(
                  width: 150,
                  height: 218,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: HexColor("#F3F3F4"),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            top: 5,
                            left: 10,
                            child: Image.asset("assets/brand2.png"),
                          ),
                          // #35AE60
                          Positioned(
                            bottom: 25,
                            left: 10,
                            child: Container(
                              width: 120,
                              height: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image2.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SpaceY(y: 5),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "adidas Yeezy Boost 700 MNVN Bone",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                wordSpacing: 5,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "Lowest Ask",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "\$373",
                              style: TextStyle(
                                fontSize: 14,
                                // color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SpaceX(x: 15),
                Container(
                  width: 150,
                  height: 218,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: HexColor("#F3F3F4"),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Positioned(
                            top: 5,
                            left: 10,
                            child: Image.asset("assets/brand3.png"),
                          ),
                          // #35AE60
                          Positioned(
                            bottom: 25,
                            left: 10,
                            child: Container(
                              width: 120,
                              height: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image3.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SpaceY(y: 5),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jordan 5 Retro Alternate Grape",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                wordSpacing: 5,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "Lowest Ask",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                            SpaceY(y: 5),
                            Text(
                              "\$252",
                              style: TextStyle(
                                fontSize: 14,
                                // color: Colors.black45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SpaceY(y: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Most Popular",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceY(y: 15),
          Container(
            width: context.screenWidth(),
            height: 320,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand2.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$233",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image5.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand3.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$214",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image6.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand1.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$280",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image3.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand4.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$432",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
              ],
            ),
          ),
          SpaceY(y: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "New Lowest Asks",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceY(y: 15),
          Container(
            width: context.screenWidth(),
            height: 320,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand2.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$233",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image5.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand3.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$214",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image6.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand1.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$280",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image3.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand4.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$432",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SpaceY(y: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "New Highest Asks",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SpaceY(y: 15),
          Container(
            width: context.screenWidth(),
            height: 320,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              primary: false,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand2.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$233",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image5.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand3.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$214",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
                Container(
                  width: context.screenWidth(),
                  height: 205,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image6.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand1.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 5 Retro Alternate Grape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$280",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SpaceY(y: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: HexColor("#F3F3F4"),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                // #35AE60
                                Positioned(
                                  bottom: 25,
                                  left: 10,
                                  child: Container(
                                    width: 120,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/image3.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SpaceX(x: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/brand4.png"),
                                Container(
                                  width: 200,
                                  child: Text(
                                    "Jordan 14 Retro Gym Red Toro",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      wordSpacing: 5,
                                    ),
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "Lowest Ask",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                ),
                                SpaceY(y: 5),
                                Text(
                                  "\$432",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceX(x: 10),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: Container(
                width: 242,
                padding: EdgeInsets.only(bottom: 15, top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                // width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: Container(
                            width: 100,
                            height: 48,
                            padding: EdgeInsets.symmetric(
                                horizontal: 9, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: greyBackground,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(LineAwesomeIcons.compass),
                                SpaceX(x: 5),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SpaceX(x: 5),
                        InkWell(
                          child: Container(
                            width: 50,
                            height: 48,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(LineAwesomeIcons.search),
                                SpaceX(x: 5),
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SpaceX(x: 5),
                        InkWell(
                          child: Container(
                            width: 50,
                            height: 48,
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(LineAwesomeIcons.user),
                                SpaceX(x: 5),
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        
                      ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
