import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:la_comer/common/subtitle/custom_subtitle.dart';
import 'package:la_comer/common/title/custom_title.dart';
import 'package:la_comer/constants/colors.dart';
import 'package:la_comer/constants/sizes.dart';
import 'package:la_comer/domain/models/product_model.dart';

import '../../../../common/icon_button/custom_icon_button.dart';
import '../../../../common/scaffold_messanger/custom_scaffold_messenger.dart';

class ProductItem extends StatefulWidget {
  final Product product;

  const ProductItem({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  _showMessage() {
    showCustomScaffoldMessenger(
      context: context,
      title: 'Producto argegado...',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Flexible(
            flex: 5,
            child: Image.network(
              widget.product.url,
            ),
          ),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(
                spacingXXS_4,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomTitle(
                          title: widget.product.title,
                          size: 14,
                          maxLines: 2,
                        ),
                      ),
                      CustomSubtitle(
                        color: MainColor.accent100,
                        subtitle: widget.product.price,
                        size: spacingS_12,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSubtitle(
                        subtitle: widget.product.weight,
                        color: MainColor.bg300,
                        size: spacingS_12,
                      ),
                      CustomIconButton(
                        iconData: Icons.add,
                        color: MainColor.accent100,
                        onPressed: _showMessage,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
