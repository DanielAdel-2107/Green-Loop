import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_loop/core/di/dependancy_injection.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'request_details_state.dart';

class RequestDetailsCubit extends Cubit<RequestDetailsState> {
  RequestDetailsCubit() : super(RequestDetailsInitial());

  Future<void> getUserEmail(String userId) async {
    try {
      emit(GetUserEmailLoading());
      final data = await getIt<SupabaseClient>()
          .from('customerss')
          .select('email')
          .eq('id', userId)
          .single();

      if (data['email'] != null) {
        emit(GetUserEmailSuccess(email: data['email']));
      } else {
        emit(GetUserEmailFailure(errorMessage: 'Email not found'));
      }
    } catch (e) {
      emit(GetUserEmailFailure(errorMessage: e.toString()));
    }
  }
}
