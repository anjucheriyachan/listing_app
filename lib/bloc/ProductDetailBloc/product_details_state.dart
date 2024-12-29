part of 'product_details_bloc.dart';

class ProductDetailsState extends Equatable {
  final ApiCallResponse<Product> apiCallResponse;
  final int index;
  const ProductDetailsState({required this.apiCallResponse, this.index = 0});

  ProductDetailsState copyWith(
      {ApiCallResponse<Product>? apiCallResponse, int? index}) {
    return ProductDetailsState(
        apiCallResponse: apiCallResponse ?? this.apiCallResponse,
        index: index ?? this.index);
  }

  @override
  List<Object?> get props => [apiCallResponse, index];
}
