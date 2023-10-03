import 'package:flutter/material.dart';

import '../../../common/chip/custom_chip.dart';
import '../../../common/text_field/custom_text_field.dart';
import '../../../common/title/custom_title.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomChip(
                    label: 'Cambiar Sucursal',
                    size: spacingS_12,
                    icon: Image.asset(
                      'assets/PNG/icono_cambiar_sucursal.png',
                      height: spacingXS_8,
                      width: spacingXS_8,
                    ),
                  ),
                  const SizedBox(
                    height: spacingXXS_4,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.pin_drop_outlined,
                        color: MainColor.accent100,
                        size: spacingM_20,
                      ),
                      SizedBox(
                        width: spacingXXS_4,
                      ),
                      CustomTitle(
                        title: 'Sucursal Norte',
                        size: spacingM_16,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: spacingXXL_48,
              height: spacingXXL_48,
              child: Image.asset(
                'assets/PNG/Icono_de_menu.png',
              ),
            )
          ],
        ),
        const SizedBox(
          height: spacingM_16,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hintText: 'Buscar productos...',
                onSubmitted: (value) {},
                iconData: Icons.search,
              ),
            ),
            const SizedBox(
              width: spacingXS_8,
            ),
            SizedBox(
              width: spacingXXL_48,
              height: spacingXXL_48,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MainColor.primary100,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      spacingM_16,
                    ),
                  ),
                  color: MainColor.primary300,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                    spacingXS_8,
                  ),
                  child: Image.asset(
                    'assets/PNG/icono_filtro.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
