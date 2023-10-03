import 'package:flutter/material.dart';
import 'package:la_comer/common/title/custom_title.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final IconData? iconData;
  final void Function() onTap;

  const CustomButton({
    required this.title,
    required this.onTap,
    Key? key,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: spacingXXL_56,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(spacingM_16),
          ),
          color: MainColor.primary100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(spacingM_16),
          child: Center(
            child: CustomTitle(
              title: title,
              size: spacingM_20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
