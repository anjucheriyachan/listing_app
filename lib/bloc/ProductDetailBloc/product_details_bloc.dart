import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:neso_software_sample_flutter/model/ProductList/product_list_model.dart';

import '../../data/ApiStatus/api_status.dart';
import '../../repositories/ProductDetailRepository/product_detail_repository.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailRepository productDetailRepository;
  ProductDetailsBloc(this.productDetailRepository)
      : super(ProductDetailsState(apiCallResponse: ApiCallResponse.initial())) {
    on<FetchProductDetailsEvent>(_fetchProductDetailsEvent);
    on<UpdatePageEvent>(_updatePageEvent);
  }

  Future<void> _fetchProductDetailsEvent(
      FetchProductDetailsEvent event, Emitter<ProductDetailsState> emit) async {
    emit(state.copyWith(apiCallResponse: ApiCallResponse.loading()));
    await productDetailRepository
        .getProductDetails(event.productId)
        .then((response) {
      emit(
          state.copyWith(apiCallResponse: ApiCallResponse.completed(response)));
    }).onError((error, slackTree) {
      print(error.toString());
      emit(state.copyWith(
          apiCallResponse: ApiCallResponse.error(error.toString())));
    });
  }

  FutureOr<void> _updatePageEvent(
      UpdatePageEvent event, Emitter<ProductDetailsState> emit) {
    emit(state.copyWith(index: event.newIndex));
  }
}
