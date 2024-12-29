import 'dart:convert';

import 'package:neso_software_sample_flutter/model/ProductList/product_list_model.dart';

import '../../config/Network Repository/network_repostory.dart';
import '../../data/DataUrlList/app_url_list.dart';

class ProductDetailRepository extends NetworkRepository {
  Future<Product> getProductDetails(String id) async {
    String productDetailUrl = AppUrls.productItemUrl + id;
    print(productDetailUrl);
    final response = await getApi(productDetailUrl);
    final decodedResponse = jsonDecode(response);
    return Product.fromJson(decodedResponse);
  }
}
