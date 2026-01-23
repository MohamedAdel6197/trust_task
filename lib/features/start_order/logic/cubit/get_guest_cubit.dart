import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../data/repositories/guest_repo.dart';
import 'get_guest_state.dart';

class GetGuestCubit extends Cubit<GetGuestState> {
  GetGuestCubit(this.repository) : super(const GetGuestState.initial());

  final GuestRepo repository;

  Future<void> getGuestInfo() async {
    emit(const GetGuestState.loading());
    final result = await repository.getGuests();
    result.when(
      success: (guest) {
        emit(GetGuestState.success(guest));
      },
      failure: (error) {
        emit(GetGuestState.failure(error));
      },
    );
  }
}
