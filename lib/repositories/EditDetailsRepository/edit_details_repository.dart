import 'dart:convert';

import '../../config/Network Repository/network_repostory.dart';
import '../../data/DataUrlList/app_url_list.dart';
import '../../model/EditDetailsModel/edit_details_model.dart';

class EditDetailsRepository extends NetworkRepository {
  Future<EditDetailsModel> getProductDetails(String id, dynamic data) async {
    String editDetailUrl = AppUrls.productItemUrl + id;
    final response = await putApi(editDetailUrl, data);
    return EditDetailsModel.fromJson(jsonDecode(response));
  }
}
