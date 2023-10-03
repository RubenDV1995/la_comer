import 'package:flutter/material.dart';
import 'package:la_comer/data/datasource/products/products_datasource.dart';

import '../../../common/grid_view/custom_grid_view.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
import '../../../domain/models/product_model.dart';
import 'item/product_item.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<Product> listProducts = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _getProducts();
  }

  _getProducts() {
    final result = productsJson;
    final data = ProductsModel.fromJson(result);
    setState(() {
      listProducts = data.products;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Column(
        children: [
          const SizedBox(
            height: spacingXL_32,
            child: TabBar(
              isScrollable: true,
              dividerColor: MainColor.bg300,
              labelColor: MainColor.accent100,
              indicatorColor: MainColor.accent100,
              unselectedLabelColor: MainColor.accent100,
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: <Widget>[
                Tab(
                  text: 'Todo',
                ),
                Tab(
                  text: 'Frutas y verduras',
                ),
                Tab(
                  text: 'Carnes',
                ),
                Tab(
                  text: 'Abarrotes',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: TabBarView(
              children: <Widget>[
                isLoading == false
                    ? CustomGridView(
                        itemCount: listProducts.length,
                        itemBuilder: (context, index) {
                          return ProductItem(
                            product: listProducts[index],
                          );
                        },
                      )
                    : const CircularProgressIndicator(),
                isLoading == false
                    ? CustomGridView(
                        itemCount: listProducts.length,
                        itemBuilder: (context, index) {
                          return ProductItem(
                            product: listProducts[index],
                          );
                        },
                      )
                    : const CircularProgressIndicator(),
                isLoading == false
                    ? CustomGridView(
                        itemCount: listProducts.length,
                        itemBuilder: (context, index) {
                          return ProductItem(
                            product: listProducts[index],
                          );
                        },
                      )
                    : const CircularProgressIndicator(),
                isLoading == false
                    ? CustomGridView(
                        itemCount: listProducts.length,
                        itemBuilder: (context, index) {
                          return ProductItem(
                            product: listProducts[index],
                          );
                        },
                      )
                    : const CircularProgressIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
