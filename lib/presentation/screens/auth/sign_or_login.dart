import 'package:fastdelivery/presentation/screens/auth/check_number.dart';
import 'package:fastdelivery/presentation/screens/auth/login.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignOrLogin extends ConsumerStatefulWidget {
  const SignOrLogin({super.key});

  @override
  _SignOrLoginState createState() => _SignOrLoginState();
}

class _SignOrLoginState extends ConsumerState<SignOrLogin> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kredsale,
      body: Container(
        width: screen.width,
        height: screen.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/food7.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(0, 0, 0, .2),
                Color.fromRGBO(0, 0, 0, 8)
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/burger-1.png",
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          "Zondo Delivery",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: kwhite),
                        ),
                      ],
                    ),
                    Text(
                      "Commandez vos plats préferer et faites vous livrer !",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: kwhite,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CheckNumber(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 2.5 * screen.width / 3,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: kwhite,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Text(
                              "M'inscrire",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kblack,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screen.width / 2,
                        child: Divider(
                          color: kwhite,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 2.5 * screen.width / 3,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: kredsale,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Text(
                              "Me connecter",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kwhite,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
