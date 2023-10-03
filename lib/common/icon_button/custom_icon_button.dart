import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final void Function()? onPressed;
  final Color? color;

  const CustomIconButton({
    required this.onPressed,
    required this.iconData,
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: spacingL_24,
      width: spacingL_24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color ?? MainColor.primary100,
        ),
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0.0),
        constraints: const BoxConstraints(),
        icon: Icon(
          iconData,
          color: color ?? MainColor.primary100,
          size: spacingM_16,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
