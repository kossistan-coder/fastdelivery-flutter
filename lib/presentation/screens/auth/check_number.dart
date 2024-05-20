import 'package:fastdelivery/presentation/screens/auth/otp_code.dart';
import 'package:fastdelivery/presentation/widgets/components/header.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';

class CheckNumber extends StatefulWidget {
  const CheckNumber({super.key});

  @override
  State<CheckNumber> createState() => _CheckNumberState();
}

class _CheckNumberState extends State<CheckNumber> {
  final _phoneNumber = TextEditingController();
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
                      top: screen.height / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: UiHeader.board(
                            titleColor: kblack,
                            subTitle:
                                "Vous recevrez un code de verification après avoir saisie le numero ",
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
                  Container(
                      height: 30,
                      constraints: const BoxConstraints(minHeight: 48),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 1,
                                offset: Offset(0, 0))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: InternationalPhoneNumberInput(
                            autoFocus: true,
                            textFieldController: _phoneNumber,
                            countries: ['TG'],
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Vueillez remplir le champ svp";
                              }
                              return null;
                            },
                            formatInput: true,
                            inputDecoration:
                                InputDecoration(border: InputBorder.none),
                            selectorConfig: SelectorConfig(
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            onInputChanged: (value) {},
                            maxLength: 50,
                            onSaved: (value) {},
                          ),
                        ),
                      )),
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
                                  child: const OtpCode(),
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
