import 'package:fastdelivery/presentation/widgets/components/label.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kfont_style.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  CartCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.sub,
    this.offset = 0,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;
  final String sub;
  double? offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: offset == null
              ? null
              : [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: offset ?? 0,
                    offset: Offset(0, (offset ?? 0) / 2),
                  )
                ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                color: ksale,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )),
                )),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: defaultTextStyle(
                                  fweight: FontWeight.bold,
                                  color: kblack,
                                  size: 14),
                            ),
                            Text(
                              sub,
                              style: defaultTextStyle(
                                size: 12,
                                color: kgreyShade,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kwhite,
                              minimumSize: const Size(
                                10,
                                10,
                              ),
                              shape: const CircleBorder(
                                  side: BorderSide(
                                color: korange,
                                width: 1,
                              ))),
                          onPressed: () {},
                          child: Icon(Icons.check))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    price,
                    style: defaultTextStyle(
                      size: 15,
                      color: kgreyShade,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete_outline_outlined))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductHorizCard extends StatelessWidget {
  ProductHorizCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.sub,
    this.offset = 0,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;
  final String sub;
  double? offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: offset == null
              ? null
              : [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: offset ?? 0,
                    offset: Offset(0, (offset ?? 0) / 2),
                  )
                ]),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: ksale,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child:
                  Padding(padding: const EdgeInsets.all(20.0), child: Text("")),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: defaultTextStyle(
                                  fweight: FontWeight.bold,
                                  color: kblack,
                                  size: 14),
                            ),
                            Text(
                              sub,
                              style: defaultTextStyle(
                                size: 12,
                                color: kgreyShade,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    price,
                    style: defaultTextStyle(
                      size: 15,
                      color: kgreyShade,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
