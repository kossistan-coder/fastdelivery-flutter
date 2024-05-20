import 'package:fastdelivery/presentation/screens/cart/checkout_order.dart';
import 'package:fastdelivery/presentation/widgets/components/cart_card.dart';
import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/components/label.dart';
import 'package:fastdelivery/presentation/widgets/components/order_card.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kdecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FoodCart extends StatefulWidget {
  const FoodCart({super.key});

  @override
  State<FoodCart> createState() => _FoodCartState();
}

class _FoodCartState extends State<FoodCart> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kredsale,
        foregroundColor: kwhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text("Panier"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: screen.width,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: BottomClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kredsale,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: kdecoration(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UiHeader.board(
                              subTitle: "23 produits",
                              titleSize: 23,
                              title: "TOTAL 23450 Fr",
                              titleColor: kblack,
                              subColor: kgreyShade,
                            ),
                            rectangleLabel(
                              text: "Selectionner Tout",
                              textColor: kwhite,
                              color: korange,
                            )
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            CartCard(
              image: 'assets/food6.jpeg',
              title: "Headphone airpod nike 43 , mike",
              price: "4305 XOF",
              sub: "lesson minut",
            ),
            CartCard(
              image: 'assets/food8.jpeg',
              title: "Headphone airpod nike 43 , mike",
              price: "4305 XOF",
              sub: "lesson minut",
            ),
            CartCard(
              image: 'assets/food1.jpeg',
              title: "Headphone airpod nike 43 , mike",
              price: "4305 XOF",
              sub: "lesson minut",
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: FloatingActionButton.extended(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutOrder(),
                ),
              );
            },
            label: const Text('Commander'),
            //icon: const Icon(Icons.thumb_up),
            backgroundColor: Color(0xFF020D1F),
          ),
        ),
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50); // Ligne vers le coin inférieur gauche
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height - 50); // Demi-cercle
    path.lineTo(size.width, 0); // Ligne vers le coin supérieur droit
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
