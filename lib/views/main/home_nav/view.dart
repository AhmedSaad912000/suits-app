import 'package:flutter/material.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/views/main/home_nav/pages/cart/view.dart';
import 'package:suits/views/main/home_nav/pages/favorite/view.dart';
import 'package:suits/views/main/home_nav/pages/home/view.dart';
import 'package:suits/views/main/home_nav/pages/my_account/view.dart';

class HomeNavView extends StatefulWidget {
  const HomeNavView({super.key});

  @override
  State<HomeNavView> createState() => _HomeNavViewState();
}

class _HomeNavViewState extends State<HomeNavView> {
  final list = ['home.svg', 'cart.svg', 'favorites.svg', 'user.svg'];
  final List<Widget> pages = [
    HomePage(),
    CartPage(),
    FavoritePage(),
    MyAccountPage()
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPage,
          onTap: (value) {
            currentPage = value;
            setState(() {});
          },
          items: List.generate(
            list.length,
            (index) => BottomNavigationBarItem(
                icon: AppImage(
                  list[index],
                  colorFilter: ColorFilter.mode(
                      currentPage == index
                          ? Theme.of(context).primaryColor
                          : Color(0xff676767),
                      BlendMode.srcIn),
                ),
                label: ''),
          )),
    );
  }
}
