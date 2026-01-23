import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../data/repo/guest_cart_repo.dart';
import 'guest_card_state.dart';

class GuestCardCubit extends Cubit<GuestCardState> {
  GuestCardCubit(this.guestCartRepo) : super(GuestCardState.initial());
  final GuestCartRepo guestCartRepo;

  Future<void> getGuestCart() async {
    emit(GuestCardState.getGuestCartLoading());
    final guestId = await SharedPrefHelper.getSecuredString('guest_id');
    final result = await guestCartRepo.getGuestCart(guestId);
    result.when(
      success: (guestCart) =>
          emit(GuestCardState.getGuestCartSuccess(guestCart)),
      failure: (error) => emit(GuestCardState.getGuestCartError(error)),
    );
  }
}
