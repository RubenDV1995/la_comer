import 'package:flutter/material.dart';
import 'package:la_comer/common/title/custom_title.dart';
import 'package:la_comer/constants/sizes.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
    showCustomScaffoldMessenger({
  required BuildContext context,
  required String title,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: CustomTitle(
        title: title,
        size: spacingM_16,
      ),
      backgroundColor: Colors.white,
      duration: const Duration(
        seconds: 1,
      ),
    ),
  );
}
