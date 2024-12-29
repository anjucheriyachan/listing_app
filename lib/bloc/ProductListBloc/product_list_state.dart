part of 'product_list_bloc.dart';

class ProductListState extends Equatable {
  final ApiCallResponse<ProductListModel> apiCallResponse;
  const ProductListState({required this.apiCallResponse});

  ProductListState copyWith(
      {ApiCallResponse<ProductListModel>? apiCallResponse}) {
    return ProductListState(
        apiCallResponse: apiCallResponse ?? this.apiCallResponse);
  }

  @override
  List<Object?> get props => [apiCallResponse];
}
