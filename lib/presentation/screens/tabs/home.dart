import 'package:fastdelivery/presentation/screens/cart/food_cart.dart';
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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kredsale,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.place,
              color: kwhite,
            ),
            Text(
              "Lomé , Togo",
              style: TextStyle(
                color: kwhite,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screen.width / 3.5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodCart(),
                      ),
                    );
                  },
                  child: circularIconLabel(
                    color: kwhite,
                    icon: Icon(
                      Icons.shopping_cart,
                      color: kblack,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                circularIconLabel(
                  color: kwhite,
                  icon: Icon(
                    IconlyBold.notification,
                    color: kblack,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                constraints: const BoxConstraints(
                  minHeight: 250,
                ),
                child: CustomPaint(
                  painter: WavyBorderPainter(),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1 pizza acheté ",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: kwhite,
                                      ),
                                    ),
                                    Text(
                                      " une offerte !",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: kwhite,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                roundedButton(
                                  text: "Commander",
                                  textColor: kredsale,
                                )
                              ],
                            ),
                            Image.asset(
                              "assets/3deal.png",
                              width: screen.width / 2,
                              height: screen.width / 2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 270,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                width: screen.width,
                                height: 50,
                                margin: EdgeInsets.all(10),
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
                                        child: const Icon(IconlyBold.filter_2))
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              height: 180,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  favoriteRestaurant(
                    screen: screen,
                    image: 'assets/food6.jpeg',
                    restaurant: "Burger Fabrik",
                    place: "Amanda Home",
                  ),
                  favoriteRestaurant(
                    screen: screen,
                    image: 'assets/food9.jpeg',
                    restaurant: "Makafui",
                    place: "Agoè anomé",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Propositions",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                      MaterialPageRoute(
                        builder: (context) => const ProductDetails(
                          image: "assets/food6.jpeg",
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Nouveau",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NewRestaurant(
                  screen: screen,
                  text: "Shawamar ",
                  image: "assets/3deal.png",
                  boxColor: kgreensky,
                ),
                NewRestaurant(
                  screen: screen,
                  text: "Spaghetti",
                  image: "assets/2deal.png",
                  boxColor: kredpur,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NewRestaurant(
                  screen: screen,
                  text: "Poulet ",
                  image: "assets/1deal.png",
                  boxColor: ksky,
                ),
                NewRestaurant(
                  screen: screen,
                  text: "Spaghetti",
                  image: "assets/2deal.png",
                  boxColor: kyellowsale,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Meilleurs ventes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                children: [
                  CustomCard(
                    note: 2.5,
                    available: true,
                    image: "assets/food6.jpeg",
                    title1: "Burger beef",
                    title2: "250 Frcfa",
                    followers: "20",
                    width: 1.3 * screen.width / 3,
                    padding: 2,
                    network: false,
                    onclick: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    note: 2.5,
                    available: true,
                    image: "assets/food6.jpeg",
                    title1: "Burger beef",
                    title2: "250 Frcfa",
                    followers: "20",
                    width: 1.3 * screen.width / 3,
                    padding: 2,
                    network: false,
                    onclick: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    note: 2.5,
                    available: true,
                    image: "assets/food6.jpeg",
                    title1: "Burger beef",
                    title2: "250 Frcfa",
                    followers: "20",
                    width: 1.3 * screen.width / 3,
                    padding: 2,
                    network: false,
                    onclick: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "A suivre",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: screen.width,
              child: favoriteRestaurant(
                screen: screen,
                image: 'assets/food6.jpeg',
                restaurant: "Burger Fabrik",
                place: "Amanda Home",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewRestaurant extends StatelessWidget {
  const NewRestaurant({
    super.key,
    required this.screen,
    required this.image,
    required this.text,
    required this.boxColor,
  });

  final Size screen;
  final String image;
  final String text;
  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(
          left: 5,
          top: 5,
        ),
        width: 1.2 * screen.width / 3,
        height: 200,
        decoration: BoxDecoration(
          color: this.boxColor,
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
                height: 150,
                width: 150,
              ),
            ),
          ],
        ));
  }
}

class favoriteRestaurant extends StatelessWidget {
  const favoriteRestaurant({
    super.key,
    required this.screen,
    required this.image,
    required this.restaurant,
    required this.place,
  });

  final Size screen;
  final String image;
  final String restaurant;
  final place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 2 * screen.width / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [Color.fromRGBO(0, 0, 0, .2), Color.fromRGBO(0, 0, 0, 8)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 5,
              top: 5,
              child: Icon(
                Icons.favorite,
                color: kwhite,
              ),
            ),
            Positioned(
              bottom: 5,
              left: 5,
              child: UiHeader.board(
                subTitle: "$place",
                title: "$restaurant".toUpperCase(),
                icon: Icon(
                  Icons.place,
                  color: kredsale,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
