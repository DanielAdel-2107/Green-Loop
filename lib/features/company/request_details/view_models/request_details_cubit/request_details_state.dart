part of 'request_details_cubit.dart';

abstract class RequestDetailsState {}

class RequestDetailsInitial extends RequestDetailsState {}

class GetUserEmailLoading extends RequestDetailsState {}

class GetUserEmailSuccess extends RequestDetailsState {
  final String email;
  GetUserEmailSuccess({required this.email});
}

class GetUserEmailFailure extends RequestDetailsState {
  final String errorMessage;
  GetUserEmailFailure({required this.errorMessage});
}
