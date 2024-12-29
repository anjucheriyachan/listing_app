part of 'edit_details_bloc.dart';

class EditDetailsState extends Equatable {
  final ApiCallResponse<EditDetailsModel> apiCallResponse;
  const EditDetailsState({required this.apiCallResponse});

  EditDetailsState copyWith(
      {ApiCallResponse<EditDetailsModel>? apiCallResponse}) {
    return EditDetailsState(
        apiCallResponse: apiCallResponse ?? this.apiCallResponse);
  }

  @override
  List<Object?> get props => [apiCallResponse];
}
