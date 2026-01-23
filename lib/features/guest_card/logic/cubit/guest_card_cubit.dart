import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../data/model/add_to_cart/add_to_cart_request.dart';
import '../../data/model/remove_from_cart/remove_from_cart_request.dart';
import '../../data/repo/guest_cart_repo.dart';
import 'guest_card_state.dart';

class GuestCardCubit extends Cubit<GuestCardState> {
  GuestCardCubit(this.guestCartRepo) : super(GuestCardState.initial());
  final GuestCartRepo guestCartRepo;

  int cartItemsCount = 0;

  Future<void> getGuestCart() async {
    emit(GuestCardState.getGuestCartLoading());
    final guestId = await SharedPrefHelper.getSecuredString(
      AppConstants.guestId,
    );
    final result = await guestCartRepo.getGuestCart(guestId);
    result.when(
      success: (guestCart) {
        cartItemsCount = guestCart.totalItems ?? 0;
        emit(GuestCardState.getGuestCartSuccess(guestCart));
      },
      failure: (error) => emit(GuestCardState.getGuestCartError(error)),
    );
  }

  Future<void> addToCart(AddToCartRequest request) async {
    final result = await guestCartRepo.addToCart(request);
    result.when(
      success: (response) => getGuestCart(),
      failure: (error) => log(error.toString()),
    );
  }

  Future<void> removeFromCart(
    String guestId,
    RemoveFromCartRequest request,
  ) async {
    final result = await guestCartRepo.removeFromCart(guestId, request);
    result.when(
      success: (response) => getGuestCart(),
      failure: (error) => log(error.toString()),
    );
  }
}
