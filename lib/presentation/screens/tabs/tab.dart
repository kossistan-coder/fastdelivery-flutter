import 'package:fastdelivery/presentation/providers/state/tab_state.dart';
import 'package:fastdelivery/presentation/screens/order/order.dart';
import 'package:fastdelivery/presentation/screens/settings/profile.dart';
import 'package:fastdelivery/presentation/screens/tabs/home.dart';
import 'package:fastdelivery/presentation/screens/tabs/shop.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';

class TabHome extends ConsumerStatefulWidget {
  const TabHome({super.key});

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends ConsumerState<TabHome> {
  final tabHomes = const [
    Home(),
    Shop(),
    Order(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final tabState = ref.watch(tabProvider);
    return Scaffold(
      body: tabHomes.elementAt(tabState),
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomNavigationItem(
                  index: 0,
                  text: 'Home',
                  icon: IconlyBold.home,
                ),
                CustomNavigationItem(
                  index: 1,
                  text: 'Acheter',
                  icon: IconlyBold.buy,
                ),
                CustomNavigationItem(
                  index: 2,
                  text: 'Commandes',
                  icon: IconlyLight.discovery,
                ),
                CustomNavigationItem(
                  index: 3,
                  text: 'Profile',
                  icon: Icons.person,
                )
              ],
            ),
          )),
    );
  }
}

class CustomNavigationItem extends ConsumerWidget {
  const CustomNavigationItem({
    Key? key,
    required this.index,
    required this.text,
    required this.icon,
  });
  final int index;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabState = ref.watch(tabProvider);
    return InkWell(
      onTap: () {
        ref.read(tabProvider.notifier).update(
              (state) => index,
            );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: tabState == index ? kwhite : Colors.transparent),
        child: Column(
          children: [
            Icon(
              icon,
              size: 25,
              color: tabState == index ? kredsale : kblack,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                text,
                style: TextStyle(
                  color: tabState == index ? kredsale : kblack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
