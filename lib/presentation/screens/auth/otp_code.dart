import 'package:fastdelivery/presentation/screens/auth/credential_creation.dart';
import 'package:fastdelivery/presentation/widgets/components/digits_input.dart';
import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';

class OtpCode extends StatefulWidget {
  const OtpCode({super.key});

  @override
  State<OtpCode> createState() => _OtpCodeState();
}

class _OtpCodeState extends State<OtpCode> {
  final otp1 = TextEditingController();
  final otp2 = TextEditingController();
  final otp3 = TextEditingController();
  final otp4 = TextEditingController();
  final otp5 = TextEditingController();
  final otp6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ksale,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: screen.height / 3,
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
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
                      top: screen.height / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: UiHeader.board(
                            titleColor: kblack,
                            subTitle:
                                "Vous recevrez un code de validation entre  30s et 2 minutes. Veuillez saisir ce code pour valider votre numéro de téléphone ",
                            titleSize: 25,
                            subSize: 15,
                            title: "Verification de numero ",
                            subColor: kblack),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Numéro de telephone",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      digitsInput(
                        controller: otp1,
                        height: 50,
                        width: 50,
                        context: context,
                      ),
                      digitsInput(
                        controller: otp2,
                        height: 50,
                        width: 50,
                        context: context,
                      ),
                      digitsInput(
                        controller: otp3,
                        height: 50,
                        width: 50,
                        context: context,
                      ),
                      digitsInput(
                        controller: otp4,
                        height: 50,
                        width: 50,
                        context: context,
                      ),
                      digitsInput(
                        controller: otp5,
                        height: 50,
                        width: 50,
                        context: context,
                      ),
                      digitsInput(
                        controller: otp6,
                        height: 50,
                        width: 50,
                        context: context,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Code non recu ? "),
                      Text(
                        "Renvoyer le code",
                        style: TextStyle(
                          color: kyellow,
                        ),
                      ),
                    ],
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: const Duration(
                                    milliseconds: 500,
                                  ),
                                  child: const CredentialCreation(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        child: Text(
                          "Verifier",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
