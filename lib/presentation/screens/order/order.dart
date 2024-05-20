import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/components/label.dart';
import 'package:fastdelivery/presentation/widgets/components/order_card.dart';
import 'package:fastdelivery/presentation/widgets/components/wavypaint_border.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kdecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconly/iconly.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
        title: Text("vos commandes"),
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
                              height: 50,
                              decoration: kdecoration(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            icon: Icon(Icons.search),
                                            label: Text("Rechercher un plat"),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: kwhiteSale,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: const Icon(IconlyBold.filter_2),
                                  )
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            const OrderCard(
              image: "assets/food9.jpeg",
              title: "headphone maxiline",
              price: "\$570",
              sub: "microsoft adonis",
            ),
            const OrderCard(
              image: "assets/food6.jpeg",
              title: "headphone maxiline",
              price: "\$570",
              sub: "microsoft adonis",
            ),
            const OrderCard(
              image: "assets/food10.jpeg",
              title: "headphone maxiline",
              price: "\$570",
              sub: "microsoft adonis",
            ),
            const OrderCard(
              image: "assets/food2.jpeg",
              title: "headphone maxiline",
              price: "\$570",
              sub: "microsoft adonis",
            ),
            const OrderCard(
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
