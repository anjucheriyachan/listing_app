part of 'edit_details_bloc.dart';

sealed class EditDetailsEvent extends Equatable {
  const EditDetailsEvent();
}

class SubmitButtonClickedEvent extends EditDetailsEvent {
  final String productId;
  final String? titleText;
  final String? priceText;
  final String? descriptionText;

  const SubmitButtonClickedEvent(
      this.titleText, this.priceText, this.descriptionText, this.productId);
  @override
  List<Object?> get props => [titleText, priceText, descriptionText, productId];
}
