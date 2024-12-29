// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditDetailsModelImpl _$$EditDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num?)?.toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      stock: (json['stock'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String,
      description: json['description'] as String,
      brand: json['brand'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$EditDetailsModelImplToJson(
        _$EditDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'stock': instance.stock,
      'rating': instance.rating,
      'images': instance.images,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'brand': instance.brand,
      'category': instance.category,
    };
