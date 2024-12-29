import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:neso_software_sample_flutter/data/ApiStatus/api_status.dart';
import 'package:neso_software_sample_flutter/model/ProductList/product_list_model.dart';

import '../../repositories/ProductListRepository/product_list_repository.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListRepository productListRepository;
  ProductListBloc(this.productListRepository)
      : super(ProductListState(apiCallResponse: ApiCallResponse.initial())) {
    on<FetchProductListEvent>(_fetchProductListEvent);
  }

  Future<void> _fetchProductListEvent(
      FetchProductListEvent event, Emitter<ProductListState> emit) async {
    emit(state.copyWith(apiCallResponse: ApiCallResponse.loading()));
    await productListRepository.getProductList().then((response) {
      emit(
          state.copyWith(apiCallResponse: ApiCallResponse.completed(response)));
    }).onError((error, slackTree) {
      print(error.toString());
      emit(state.copyWith(
          apiCallResponse: ApiCallResponse.error(error.toString())));
    });
  }
}
