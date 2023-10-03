import 'package:flutter/material.dart';
import 'package:la_comer/constants/sizes.dart';

class CustomPage extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;

  const CustomPage({
    required this.body,
    Key? key,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(spacingM_16),
          child: body,
        )
      ),
      bottomNavigationBar: bottomNavigationBar ?? const SizedBox.shrink(),
    );
  }
}
