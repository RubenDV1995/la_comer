import 'package:flutter/material.dart';
import 'package:la_comer/constants/colors.dart';
import 'package:la_comer/constants/sizes.dart';

class CustomTextField extends StatelessWidget {
  final Function(String)? onSubmitted;
  final String? hintText;
  final IconData? iconData;
  final bool? obscureText;

  const CustomTextField({
    Key? key,
    this.onSubmitted,
    this.hintText,
    this.iconData,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spacingXXL_48,
      child: TextField(
        obscureText: obscureText ?? false,
        enableSuggestions: false,
        autocorrect: false,
        maxLines: 1,
        minLines: 1,
        style: const TextStyle(
          color: Colors.black,
          fontSize: spacingM_16,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData ?? Icons.done,
            color: MainColor.primary100,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              spacingM_16,
            ),
          ),
          filled: true,
          hintStyle: TextStyle(
            color: Colors.grey[800],
            fontSize: spacingM_16,
          ),
          hintText: hintText ?? "DefaultText",
          fillColor: MainColor.primary300,
        ),
        onSubmitted: onSubmitted,
      ),
    );
  }
}
