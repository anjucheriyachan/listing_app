import 'dart:convert';

import 'package:neso_software_sample_flutter/config/Network%20Repository/network_repostory.dart';
import 'package:neso_software_sample_flutter/data/DataUrlList/app_url_list.dart';
import 'package:neso_software_sample_flutter/model/ProductList/product_list_model.dart';

class ProductListRepository extends NetworkRepository {
  Future<ProductListModel> getProductList() async {
    final response = await getApi(AppUrls.productListUrl);
    final decodedResponse = jsonDecode(response);
    return ProductListModel.fromJson(decodedResponse);
  }
}
