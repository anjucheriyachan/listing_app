// To parse this JSON data, do
//
//     final productListModel = productListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_model.freezed.dart';
part 'product_list_model.g.dart';


@freezed
class ProductListModel with _$ProductListModel {
  const factory ProductListModel({
    @JsonKey(name: "products") required List<Product> products,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "skip") required int skip,
    @JsonKey(name: "limit") required int limit,
  }) = _ProductListModel;

  factory ProductListModel.fromJson(Map<String, dynamic> json) =>
      _$ProductListModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "discountPercentage") required double discountPercentage,
    @JsonKey(name: "rating") required double rating,
    @JsonKey(name: "stock") required int stock,
    @JsonKey(name: "tags") required List<String> tags,
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "sku") required String sku,
    @JsonKey(name: "weight") required int weight,
    @JsonKey(name: "dimensions") required Dimensions dimensions,
    @JsonKey(name: "warrantyInformation") required String warrantyInformation,
    @JsonKey(name: "shippingInformation") required String shippingInformation,
    @JsonKey(name: "availabilityStatus") required String availabilityStatus,
    @JsonKey(name: "reviews") required List<Review> reviews,
    @JsonKey(name: "returnPolicy") required String returnPolicy,
    @JsonKey(name: "minimumOrderQuantity") required int minimumOrderQuantity,
    @JsonKey(name: "meta") required Meta meta,
    @JsonKey(name: "images") required List<String> images,
    @JsonKey(name: "thumbnail") required String thumbnail,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    @JsonKey(name: "width") required double width,
    @JsonKey(name: "height") required double height,
    @JsonKey(name: "depth") required double depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "updatedAt") required String updatedAt,
    @JsonKey(name: "barcode") required String barcode,
    @JsonKey(name: "qrCode") required String qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: "rating") required int rating,
    @JsonKey(name: "comment") required String comment,
    @JsonKey(name: "date") required String date,
    @JsonKey(name: "reviewerName") required String reviewerName,
    @JsonKey(name: "reviewerEmail") required String reviewerEmail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
