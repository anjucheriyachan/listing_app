import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_details_model.freezed.dart';
part 'edit_details_model.g.dart';

@freezed
class EditDetailsModel with _$EditDetailsModel {
  const factory EditDetailsModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "price") double? price,
    @JsonKey(name: "discountPercentage") required double discountPercentage,
    @JsonKey(name: "stock") required int stock,
    @JsonKey(name: "rating") required double rating,
    @JsonKey(name: "images") required List<String> images,
    @JsonKey(name: "thumbnail") required String thumbnail,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "brand") required String brand,
    @JsonKey(name: "category") required String category,
  }) = _EditDetailsModel;

  factory EditDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$EditDetailsModelFromJson(json);
}
