import 'package:fastdelivery/presentation/screens/settings/profile.dart';
import 'package:fastdelivery/presentation/widgets/components/cart_card.dart';
import 'package:fastdelivery/presentation/widgets/components/custom_buttom.dart';
import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/components/label.dart';
import 'package:fastdelivery/presentation/widgets/components/wavypaint_border.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kdecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.image});
  final String image;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          widget.image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(0, 0, 0, .2),
                              Color.fromRGBO(0, 0, 0, 8)
                            ],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 10,
                              left: 5,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 20,
                                  color: kwhite,
                                ),
                              )),
                          Positioned(
                              top: 10,
                              right: 5,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.share,
                                      size: 30,
                                      color: kwhite,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.info_outline_rounded,
                                      size: 30,
                                      color: kwhite,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 150,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kwhite,
                      ),
                      child: const CircleAvatar(
                        backgroundColor: kredsale,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screen.width / 7,
                top: 30,
                right: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Assiyéyé , Bar 2face",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Chez burger fast")
                    ],
                  ),
                  rectangleLabel(
                    text: "Ouvert",
                    textColor: kwhite,
                    color: korange,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: kdecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Temps de livraison"), Text("45 min")],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Nombre de commandes"), Text("30")],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Quantité"),
                          Row(
                            children: [
                              circularIconLabel(
                                  color: kwhite,
                                  icon: const Icon(
                                    Icons.remove,
                                    color: kblack,
                                  )),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text("1"),
                              const SizedBox(
                                width: 8,
                              ),
                              circularIconLabel(
                                  color: kwhite,
                                  icon: const Icon(
                                    Icons.add,
                                    color: kblack,
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            ProductHorizCard(
              image: 'assets/food6.jpeg',
              title: "Headphone airpod nike 43 , mike",
              price: "4305 XOF",
              sub: "lesson minut",
            ),
            ProductHorizCard(
              image: 'assets/food6.jpeg',
              title: "Headphone airpod nike 43 , mike",
              price: "4305 XOF",
              sub: "lesson minut",
            ),
            ProductHorizCard(
              image: 'assets/food6.jpeg',
              title: "Headphone airpod nike 43 , mike",
              price: "4305 XOF",
              sub: "lesson minut",
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1500XOF",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Prix Total")
                ],
              ),
              Container(
                height: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: kredsale,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Ajouter au panier",
                        style: TextStyle(
                          color: kwhite,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: korange,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Acheter ",
                        style: TextStyle(
                          color: kwhite,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
