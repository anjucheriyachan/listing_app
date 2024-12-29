part of 'product_details_bloc.dart';

sealed class ProductDetailsEvent extends Equatable {
  const ProductDetailsEvent();
}

class FetchProductDetailsEvent extends ProductDetailsEvent {
  final String productId;

  const FetchProductDetailsEvent({required this.productId});

  @override
  List<Object?> get props => [productId];
}

class UpdatePageEvent extends ProductDetailsEvent {
  final int newIndex;

  const UpdatePageEvent(this.newIndex);

  @override
  List<Object> get props => [newIndex];
}
