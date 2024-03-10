import 'package:fastdelivery/presentation/screens/cart/food_cart.dart';
import 'package:fastdelivery/presentation/widgets/components/cart_card.dart';
import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/components/label.dart';
import 'package:fastdelivery/presentation/widgets/components/order_card.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kdecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CheckoutOrder extends StatefulWidget {
  const CheckoutOrder({super.key});

  @override
  State<CheckoutOrder> createState() => _CheckoutOrderState();
}

class _CheckoutOrderState extends State<CheckoutOrder> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kredsale,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Text("Confirmer commande"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
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
                    width: screen.width,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 241, 240, 240),
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        )
                      ],
                      border: Border.all(
                        color: kgreyShade,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UiHeader.board(
                              subTitle: "2300XOF",
                              titleColor: kblack,
                              subColor: kgrey,
                              title: "Amaro dako",
                            ),
                            SizedBox(
                                width: 60,
                                height: 60,
                                child: Image.asset("assets/mcard.png"))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Solde sur le Compte",
                          style: TextStyle(
                            color: korange,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ProductHorizCard(
              image: "assets/food10.jpeg",
              title: "headphone maxiline",
              price: "\$570",
              sub: "microsoft adonis",
            ),
            ProductHorizCard(
              image: "assets/food2.jpeg",
              title: "headphone maxiline",
              price: "\$570",
              sub: "microsoft adonis",
            ),
            ProductHorizCard(
              image: "assets/food11.jpeg",
              title: "headphone maxiline",
              price: "\$570",
              sub: "microsoft adonis",
            )
          ],
        ),
      ),
    );
  }
}
