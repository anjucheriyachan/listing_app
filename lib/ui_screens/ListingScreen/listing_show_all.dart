import 'package:flutter/material.dart';

import '../../model/ProductList/product_list_model.dart';
import '../../utils/TextStyles/text_styles.dart';

class ListingShowAll extends StatelessWidget {
  final List<Product> productsInCategory;
  final String category;
  const ListingShowAll(
      {super.key, required this.productsInCategory, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: TextStyles.productListMainTitleStyle,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
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
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 0.5,
                            offset: const Offset(0, 0)),
                      ],
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network(product.thumbnail),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            product.title,
                            textAlign: TextAlign.center,
                            style: TextStyles.productListTitleStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                            child: Text(
                              product.description,
                              textAlign: TextAlign.center,
                              style: TextStyles.productListDescStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              '\$ ${product.price.toString()}',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyles.productListPriceAndCategoryStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 22,
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
    );
  }
}
