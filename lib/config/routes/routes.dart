import 'package:flutter/material.dart';
import 'package:neso_software_sample_flutter/config/routes/route_names.dart';
import 'package:neso_software_sample_flutter/ui_screens/ListingScreen/listing_show_all.dart';

import '../../model/ProductList/product_list_model.dart';
import '../../ui_screens/screens_export.dart';

class Routes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.listingScreen:
        return MaterialPageRoute(builder: (context) => const ListingScreen());
      case RouteNames.listingShowAll:
        final args = settings.arguments as Map<String, dynamic>;
        final productsInCategory = args['products'] as List<Product>;
        final category = args['category'] as String;
        return MaterialPageRoute(
          builder: (context) => ListingShowAll(
            productsInCategory: productsInCategory,
            category: category,
          ),
        );
      case RouteNames.productScreen:
        final productId = settings.arguments as String;
        return MaterialPageRoute(
            builder: (context) => ProductScreen(
                  productId: productId,
                ));
      case RouteNames.editingScreen:
        final productId = settings.arguments as String;
        return MaterialPageRoute(
            builder: (context) => EditingScreen(
                  productId: productId,
                ));
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No routes'),
            ),
          );
        });
    }
  }
}
