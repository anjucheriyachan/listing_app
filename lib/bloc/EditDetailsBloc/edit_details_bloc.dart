import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/ApiStatus/api_status.dart';
import '../../model/EditDetailsModel/edit_details_model.dart';
import '../../repositories/EditDetailsRepository/edit_details_repository.dart';

part 'edit_details_event.dart';
part 'edit_details_state.dart';

class EditDetailsBloc extends Bloc<EditDetailsEvent, EditDetailsState> {
  EditDetailsRepository editDetailsRepository;
  EditDetailsBloc(this.editDetailsRepository)
      : super(EditDetailsState(apiCallResponse: ApiCallResponse.initial())) {
    on<SubmitButtonClickedEvent>(_submitButtonClickedEvent);
  }

  Future<void> _submitButtonClickedEvent(
      SubmitButtonClickedEvent event, Emitter<EditDetailsState> emit) async {
    emit(state.copyWith(apiCallResponse: ApiCallResponse.loading()));
    Map<String, dynamic> data = {};

    if (event.titleText!.isNotEmpty) {
      data['title'] = event.titleText;
    }

    if (event.priceText!.isNotEmpty) {
      double? price = double.tryParse(event.priceText!);
      if (price != null) {
        data['price'] = price;
      }
    }

    if (event.descriptionText!.isNotEmpty) {
      data['description'] = event.descriptionText;
    }

    if (data.isNotEmpty) {
      await editDetailsRepository
          .getProductDetails(event.productId, data)
          .then((response) {
        emit(state.copyWith(
            apiCallResponse: ApiCallResponse.completed(response)));
      }).onError((error, slackTree) {
        print(error.toString());
        emit(state.copyWith(
            apiCallResponse: ApiCallResponse.error(error.toString())));
      });
    } else {
      emit(state.copyWith(
          apiCallResponse:
              ApiCallResponse.error('Please enter at least one value')));
    }
  }
}
