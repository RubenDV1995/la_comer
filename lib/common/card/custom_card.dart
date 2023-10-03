import 'package:flutter/material.dart';
import 'package:la_comer/common/subtitle/custom_subtitle.dart';
import 'package:la_comer/constants/sizes.dart';

import '../chip/custom_chip.dart';

class CustomCard extends StatelessWidget {
  final String title;

  const CustomCard({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.21,
      width: double.infinity,
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              bottom: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: CustomSubtitle(
                        subtitle: title,
                        size: spacingM_20,
                      ),
                    ),
                    const SizedBox(
                      height: spacingL_24,
                    ),
                    const CustomChip(
                      label: 'Ver oferta',
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Image.asset(
                'assets/PNG/banner.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
