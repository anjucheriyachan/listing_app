import 'package:flutter/material.dart';

import '../../model/ProductList/product_list_model.dart';
import '../../utils/TextStyles/text_styles.dart';

class ListingScreenUI extends StatelessWidget {
  final List<Product> productList;
  final VoidCallback onClick;

  const ListingScreenUI(
      {super.key, required this.productList, required this.onClick});

  @override
  Widget build(BuildContext context) {
    Map<String, List<Product>> groupedProducts = {};
    for (var product in productList) {
      groupedProducts[product.category] ??= [];
      groupedProducts[product.category]?.add(product);
    }

    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover our exclusive products',
            style: TextStyles.productListMainTitleStyle,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Great options at cheaper  rate',
            style: TextStyles.productListDescStyle.copyWith(fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: groupedProducts.keys.length,
              itemBuilder: (context, categoryIndex) {
                String category = groupedProducts.keys.elementAt(categoryIndex);
                List<Product> productsInCategory = groupedProducts[category]!;

                String capitalizedCategory =
                    '${category[0].toUpperCase()}${category.substring(1)}';

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  capitalizedCategory,
                                  style: TextStyles
                                      .productListPriceAndCategoryStyle,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, 'listing_show_all',
                                        arguments: {
                                          'products': productsInCategory,
                                          'category': capitalizedCategory,
                                        });
                                  },
                                  child: Text(
                                    'Show All',
                                    style: TextStyles.showAllStyle,
                                  ),
                                ),
                              ])),
                      SizedBox(
                        height: 270,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: productsInCategory.length,
                          itemBuilder: (context, productIndex) {
                            Product product = productsInCategory[productIndex];
                            return InkWell(
                              onTap: () {
                                String productId = product.id.toString();
                                Navigator.pushNamed(
                                  context,
                                  'product_screen',
                                  arguments: productId,
                                );
                              },
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Container(
                                      width: 180,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade500,
                                              blurRadius: 0.5,
                                              offset: const Offset(0, 0)),
                                        ],
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 80,
                                              height: 80,
                                              child: Image.network(
                                                  product.thumbnail),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              product.title,
                                              textAlign: TextAlign.center,
                                              style: TextStyles
                                                  .productListTitleStyle,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, bottom: 8),
                                              child: Text(
                                                maxLines: 3,
                                                product.description,
                                                textAlign: TextAlign.center,
                                                style: TextStyles
                                                    .productListDescStyle,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Text(
                                                '\$ ${product.price.toString()}',
                                                textAlign: TextAlign.center,
                                                style: TextStyles
                                                    .productListPriceAndCategoryStyle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 12,
                                    right: 22,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
