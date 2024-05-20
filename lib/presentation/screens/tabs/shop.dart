import 'package:fastdelivery/presentation/screens/product_details.dart';
import 'package:fastdelivery/presentation/widgets/components/custom_buttom.dart';
import 'package:fastdelivery/presentation/widgets/components/custom_card.dart';
import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/components/label.dart';
import 'package:fastdelivery/presentation/widgets/components/wavypaint_border.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kdecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kredsale,
        foregroundColor: kwhite,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text("Acheter"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                constraints: const BoxConstraints(
                  minHeight: 80,
                ),
                child: CustomPaint(
                  painter: WavyBorderPainter(),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Center(
                          child: Container(
                            width: 5 * screen.width / 6,
                            padding: const EdgeInsets.all(10),
                            decoration: kdecoration(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    rectangleIconLabel(
                                      color: ksale,
                                      icon: const Icon(Icons.place),
                                      borderColor: ksale,
                                    ),
                                    UiHeader.board(
                                      subTitle: "6FR3656Q+R2",
                                      title: "votre position",
                                      titleColor: kblack,
                                      titleSize: 17,
                                      subColor: kgreyShade,
                                    ),
                                  ],
                                ),
                                circularIconLabel(
                                  color: kredsale,
                                  icon: Icon(
                                    Icons.horizontal_distribute,
                                    color: kwhite,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Container(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                children: [
                  Categories(
                    screen: screen,
                    text: "Poulet ",
                    image: "assets/1deal.png",
                    boxColor: kwhite,
                    isactive: true,
                  ),
                  Categories(
                    screen: screen,
                    text: "Poulet ",
                    image: "assets/2deal.png",
                    boxColor: kwhite,
                    isactive: false,
                  ),
                ],
              ),
            ),
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 1.0,
                crossAxisSpacing: 3.0,
                mainAxisSpacing: 3,
                mainAxisExtent: 300,
              ),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return CustomCard(
                  note: 2.5,
                  available: true,
                  image: "assets/food6.jpeg",
                  title1: "Burger beef",
                  title2: "250 Frcfa",
                  followers: "20",
                  width: 0,
                  padding: 2,
                  network: false,
                  onclick: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: ProductDetails(
                              image: "assets/food6.jpeg",
                            ),
                            type: PageTransitionType.rightToLeft));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  Categories({
    super.key,
    required this.screen,
    required this.image,
    required this.text,
    required this.boxColor,
    required this.isactive,
  });

  final Size screen;
  final String image;
  final String text;
  final Color boxColor;
  bool isactive;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(
          left: 5,
          top: 5,
        ),
        width: 1.4 * screen.width / 3,
        height: 70,
        decoration: BoxDecoration(
          color: isactive ? Color.fromARGB(255, 252, 224, 222) : this.boxColor,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 241, 240, 240),
              blurRadius: 5,
              offset: Offset(0, 5),
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                "$text",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                image,
                height: 120,
                width: 120,
              ),
            ),
          ],
        ));
  }
}
