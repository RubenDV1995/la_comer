import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {},
      selectedIndex: 1,
      indicatorColor: MainColor.primary300,
      backgroundColor: Colors.white,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(
            Icons.home_filled,
            color: MainColor.primary100,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.contact_page_sharp,
            color: MainColor.primary100,
          ),
          label: 'Documentos',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.shopping_cart_rounded,
            color: MainColor.primary100,
          ),
          label: "Carrito",
        ),
        NavigationDestination(
          icon: Icon(
            Icons.favorite,
            color: MainColor.primary100,
          ),
          label: 'Wishlist',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.person,
            color: MainColor.primary100,
          ),
          label: "Mi cuenta",
        ),
      ],
    );
  }
}
