import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/components/label.dart';
import 'package:fastdelivery/presentation/widgets/components/wavypaint_border.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kdecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconly/iconly.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;
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
        title: Text("Compte"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: CustomPaint(
              painter: WavyBorderPainter(),
              child: Stack(
                children: [
                  ProfileCard(sized: sized),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: kdecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderOptions(
                      icon: IconlyBold.activity,
                      text: "Expediées",
                    ),
                    OrderOptions(
                      icon: IconlyLight.paper_fail,
                      text: "Annulées",
                    ),
                    OrderOptions(
                      icon: Icons.check_box,
                      text: "Terminées",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.sized,
  }) : super(key: key);

  final Size sized;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      width: sized.width,
      decoration: kdecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 85,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        "images/user6.jpg",
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: circularIconLabel(
                        color: kpurple,
                        icon: const Icon(
                          Icons.edit,
                          color: kwhite,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UiHeader.center(subTitle: "Achats", title: "100+"),
                      const SizedBox(
                        width: 5,
                      ),
                      UiHeader.center(subTitle: "Abonnements", title: "53"),
                      const SizedBox(
                        width: 5,
                      ),
                      UiHeader.center(subTitle: "articles", title: "57")
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      circularLabel(
                        color: ksale,
                        text: "Suivre ",
                        textColor: kbluepur,
                      ),
                      circularLabel(
                        color: ksale,
                        text: "Contacter",
                        textColor: kbluepur,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("amaro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Row(
            children: [
              Text(
                "Amaro",
                style: TextStyle(color: kgreyShade),
              )
            ],
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.all(5),
            width: sized.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                circularLabel(
                  color: kwhiteSale,
                  text: "#Agroalimentaires",
                  textColor: kgreyShade,
                ),
                circularLabel(
                  color: kwhiteSale,
                  text: "#designer",
                  textColor: kgreyShade,
                ),
                circularLabel(
                  color: kwhiteSale,
                  text: "#textiles",
                  textColor: kgreyShade,
                ),
              ],
            ),
          ),
          Row(
            children: [
              CustomOutlineButton(
                text: "Recharger votre compte",
                size: 3 * sized.width / 4,
                ontap: () {},
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: kbluepur,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.size,
    required this.ontap,
  }) : super(key: key);
  final String text;
  final double size;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          padding: const EdgeInsets.all(10),
          width: size,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              korange,
              kpurple,
            ]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: kwhite,
              ),
            ),
          )),
    );
  }
}

class OrderOptions extends StatelessWidget {
  const OrderOptions({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      //height: 95,
      decoration:
          BoxDecoration(color: kwhite, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            //color: kwhite,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              // color: kwhite,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
