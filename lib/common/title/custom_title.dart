import 'package:flutter/material.dart';
import 'package:la_comer/constants/colors.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double? size;
  final Color? color;
  final int? maxLines;

  const CustomTitle({
    required this.title,
    Key? key,
    this.size,
    this.color,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines ?? 1,
      style: size != null
          ? Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: size,
                color: color ?? MainColor.text100,
                fontWeight: FontWeight.bold,
              )
          : Theme.of(context).textTheme.titleLarge,
    );
  }
}
