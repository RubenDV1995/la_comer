import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class CustomGridView extends StatelessWidget {
  final int itemCount;
  final double? aspectRatio;
  final Widget? Function(BuildContext, int) itemBuilder;

  const CustomGridView({
    required this.itemCount,
    required this.itemBuilder,
    Key? key,
    this.aspectRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(spacingXS_8),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: (aspectRatio) ?? (4 / 4),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
