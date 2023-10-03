import 'package:flutter/material.dart';

import '../../../common/card/custom_card.dart';
import '../../../common/navigation/custom_navigation_bar.dart';
import '../../../common/page/custom_page.dart';
import '../../../constants/sizes.dart';
import '../widgets/custom_tab_bar.dart';
import '../widgets/home_header.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _pages = const [
    ProductPage(),
    ProductPage(),
    ProductPage(),
    ProductPage(),
    ProductPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      body: IndexedStack(
        index: 1,
        children: _pages,
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          SizedBox(
            height: spacingXL_32,
          ),
          CustomCard(
            title: 'Hasta 35% off en frutas y verduras seleccionadas',
          ),
          SizedBox(
            height: spacingM_16,
          ),
          CustomTabBar(),
        ],
      ),
    );
  }
}
