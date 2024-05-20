import 'package:fastdelivery/presentation/entities/input_type.dart';
import 'package:fastdelivery/presentation/screens/auth/login.dart';
import 'package:fastdelivery/presentation/screens/cart/food_cart.dart';
import 'package:fastdelivery/presentation/widgets/components/custom_text_input.dart';
import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:fastdelivery/presentation/widgets/font/kdecoration.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CredentialCreation extends StatefulWidget {
  const CredentialCreation({super.key});

  @override
  State<CredentialCreation> createState() => _CredentialCreationState();
}

class _CredentialCreationState extends State<CredentialCreation> {
  final password = TextEditingController();
  final email = TextEditingController();
  final nom = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ksale,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screen.height / 4,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 250,
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                            left: -50,
                            top: -20,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: kredsale,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              "assets/2deal.png",
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Positioned(
                            top: 2,
                            right: -50,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: kredsale, shape: BoxShape.circle),
                              child: Image.asset(
                                "assets/3deal.png",
                                width: 200,
                                height: 200,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 5,
                            top: 150,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: UiHeader.board(
                                  titleColor: kblack,
                                  subTitle:
                                      "Enregistrer vos information personelles ",
                                  titleSize: 25,
                                  subSize: 15,
                                  title: "Création de compte ",
                                  subColor: kblack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: screen.width,
              decoration: kdecoration(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/burger-1.png",
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        customTextInput(
                          txtController: email,
                          label: "****@gmail.com",
                          inputType: InputType.email,
                          validate: (value) => Validator.input(value, 4),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Entrer votre nom",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        customTextInput(
                          txtController: nom,
                          label: "Entrer votre nom",
                          inputType: InputType.text,
                          validate: (value) => Validator.input(value, 4),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Prenom",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        customTextInput(
                          txtController: nom,
                          label: "Entrer votre prenom",
                          inputType: InputType.text,
                          validate: (value) => Validator.input(value, 4),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mot de passe",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        customTextInput(
                          txtController: password,
                          label: "**** ****",
                          inputType: InputType.password,
                          validate: (value) => Validator.input(value, 4),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Text("Mot de passe oublié ? "),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black38, blurRadius: 15.0)
                        ],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "M'inscrire",
                          style: TextStyle(
                              letterSpacing: 0.2,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kredsale,
                          elevation: 0,
                          foregroundColor: Colors.white,
                          minimumSize: Size(double.infinity, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Text("Vous avez déjà de compte ? "),
                        ),
                        Text(
                          "Connectez vous",
                          style: TextStyle(color: kredsale),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
