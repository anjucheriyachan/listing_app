// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditDetailsModel _$EditDetailsModelFromJson(Map<String, dynamic> json) {
  return _EditDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$EditDetailsModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "discountPercentage")
  double get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;

  /// Serializes this EditDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditDetailsModelCopyWith<EditDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditDetailsModelCopyWith<$Res> {
  factory $EditDetailsModelCopyWith(
          EditDetailsModel value, $Res Function(EditDetailsModel) then) =
      _$EditDetailsModelCopyWithImpl<$Res, EditDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "price") double? price,
      @JsonKey(name: "discountPercentage") double discountPercentage,
      @JsonKey(name: "stock") int stock,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "images") List<String> images,
      @JsonKey(name: "thumbnail") String thumbnail,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "brand") String brand,
      @JsonKey(name: "category") String category});
}

/// @nodoc
class _$EditDetailsModelCopyWithImpl<$Res, $Val extends EditDetailsModel>
    implements $EditDetailsModelCopyWith<$Res> {
  _$EditDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = freezed,
    Object? discountPercentage = null,
    Object? stock = null,
    Object? rating = null,
    Object? images = null,
    Object? thumbnail = null,
    Object? description = null,
    Object? brand = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditDetailsModelImplCopyWith<$Res>
    implements $EditDetailsModelCopyWith<$Res> {
  factory _$$EditDetailsModelImplCopyWith(_$EditDetailsModelImpl value,
          $Res Function(_$EditDetailsModelImpl) then) =
      __$$EditDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "price") double? price,
      @JsonKey(name: "discountPercentage") double discountPercentage,
      @JsonKey(name: "stock") int stock,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "images") List<String> images,
      @JsonKey(name: "thumbnail") String thumbnail,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "brand") String brand,
      @JsonKey(name: "category") String category});
}

/// @nodoc
class __$$EditDetailsModelImplCopyWithImpl<$Res>
    extends _$EditDetailsModelCopyWithImpl<$Res, _$EditDetailsModelImpl>
    implements _$$EditDetailsModelImplCopyWith<$Res> {
  __$$EditDetailsModelImplCopyWithImpl(_$EditDetailsModelImpl _value,
      $Res Function(_$EditDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = freezed,
    Object? discountPercentage = null,
    Object? stock = null,
    Object? rating = null,
    Object? images = null,
    Object? thumbnail = null,
    Object? description = null,
    Object? brand = null,
    Object? category = null,
  }) {
    return _then(_$EditDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditDetailsModelImpl implements _EditDetailsModel {
  const _$EditDetailsModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "discountPercentage") required this.discountPercentage,
      @JsonKey(name: "stock") required this.stock,
      @JsonKey(name: "rating") required this.rating,
      @JsonKey(name: "images") required final List<String> images,
      @JsonKey(name: "thumbnail") required this.thumbnail,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "brand") required this.brand,
      @JsonKey(name: "category") required this.category})
      : _images = images;

  factory _$EditDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "price")
  final double? price;
  @override
  @JsonKey(name: "discountPercentage")
  final double discountPercentage;
  @override
  @JsonKey(name: "stock")
  final int stock;
  @override
  @JsonKey(name: "rating")
  final double rating;
  final List<String> _images;
  @override
  @JsonKey(name: "images")
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: "thumbnail")
  final String thumbnail;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "brand")
  final String brand;
  @override
  @JsonKey(name: "category")
  final String category;

  @override
  String toString() {
    return 'EditDetailsModel(id: $id, title: $title, price: $price, discountPercentage: $discountPercentage, stock: $stock, rating: $rating, images: $images, thumbnail: $thumbnail, description: $description, brand: $brand, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      price,
      discountPercentage,
      stock,
      rating,
      const DeepCollectionEquality().hash(_images),
      thumbnail,
      description,
      brand,
      category);

  /// Create a copy of EditDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditDetailsModelImplCopyWith<_$EditDetailsModelImpl> get copyWith =>
      __$$EditDetailsModelImplCopyWithImpl<_$EditDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _EditDetailsModel implements EditDetailsModel {
  const factory _EditDetailsModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "price") final double? price,
          @JsonKey(name: "discountPercentage")
          required final double discountPercentage,
          @JsonKey(name: "stock") required final int stock,
          @JsonKey(name: "rating") required final double rating,
          @JsonKey(name: "images") required final List<String> images,
          @JsonKey(name: "thumbnail") required final String thumbnail,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "brand") required final String brand,
          @JsonKey(name: "category") required final String category}) =
      _$EditDetailsModelImpl;

  factory _EditDetailsModel.fromJson(Map<String, dynamic> json) =
      _$EditDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "price")
  double? get price;
  @override
  @JsonKey(name: "discountPercentage")
  double get discountPercentage;
  @override
  @JsonKey(name: "stock")
  int get stock;
  @override
  @JsonKey(name: "rating")
  double get rating;
  @override
  @JsonKey(name: "images")
  List<String> get images;
  @override
  @JsonKey(name: "thumbnail")
  String get thumbnail;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "brand")
  String get brand;
  @override
  @JsonKey(name: "category")
  String get category;

  /// Create a copy of EditDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditDetailsModelImplCopyWith<_$EditDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
