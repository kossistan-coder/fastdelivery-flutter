import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final image;
  final title1;
  final title2;
  final followers;
  double width;
  double padding;
  bool network;
  bool available;
  double note;
  Function() onclick;
  CustomCard({
    Key? key,
    this.image,
    this.title1,
    this.title2,
    this.followers,
    required this.width,
    required this.padding,
    required this.network,
    required this.onclick,
    required this.available,
    required this.note,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding),
      child: InkWell(
        onTap: widget.onclick,
        child: Container(
          width: widget.width,
          constraints: BoxConstraints(minHeight: 110),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: kwhiteSale,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                )
              ]),
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              Positioned(
                top: 8,
                left: 8,
                right: 8,
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                          image: widget.network
                              ? NetworkImage(
                                  widget.image,
                                )
                              : AssetImage(widget.image) as ImageProvider,
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 5,
                          left: 5,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: widget.available
                                    ? Color(0xFF020D1F)
                                    : Color(0xFFFF002C),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                )),
                            child: Text(
                              widget.available ? "Disponible" : "Sur commande",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      Positioned(
                          top: 5,
                          right: 5,
                          child: Row(
                            children: [
                              Text("${widget.note}"),
                              Icon(Icons.star, color: Colors.yellow, size: 17)
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 155,
                right: 3,
                left: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title1.length > 34
                            ? widget.title1.substring(0, 32) + ' ...'
                            : widget.title1,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        widget.title2,
                        style: const TextStyle(color: kredsale, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  "${widget.followers} ventes",
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 1.0, right: 1),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [

              //       ElevatedButton(
              //           style: OutlinedButton.styleFrom(shape: CircleBorder()),
              //           onPressed: () {},
              //           child: Icon(
              //             Icons.shopping_cart,
              //             size: 15,
              //           ))
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
