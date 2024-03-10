import 'package:fastdelivery/controllers/cubits/tab_cubit.dart';
import 'package:fastdelivery/presentation/screens/order/order.dart';
import 'package:fastdelivery/presentation/screens/settings/profile.dart';
import 'package:fastdelivery/presentation/screens/tabs/home.dart';
import 'package:fastdelivery/presentation/screens/tabs/shop.dart';
import 'package:fastdelivery/presentation/widgets/font/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  final tabHomes = const [
    Home(),
    Shop(),
    Order(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final tabCubit = BlocProvider.of<TabCubit>(context, listen: true);
    return Scaffold(
      body: tabHomes.elementAt(tabCubit.state.index),
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            height: 60,
            // margin: const EdgeInsets.all(10),
            // decoration: const BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(20)),
            //   color: kblack,
            // ),
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

class CustomNavigationItem extends StatelessWidget {
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
  Widget build(
    BuildContext context,
  ) {
    final tabCubit = BlocProvider.of<TabCubit>(context, listen: true);
    return InkWell(
      onTap: () {
        BlocProvider.of<TabCubit>(context, listen: false).setTabIndex(index);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: tabCubit.state.index == index ? kwhite : Colors.transparent),
        child: Column(
          children: [
            Icon(
              icon,
              size: 25,
              color: tabCubit.state.index == index ? kredsale : kblack,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                text,
                style: TextStyle(
                  color: tabCubit.state.index == index ? kredsale : kblack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
