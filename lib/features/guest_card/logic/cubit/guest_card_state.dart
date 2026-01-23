import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error_handler/error_handle.dart';
import '../../data/model/guest_cart_response.dart';

part 'guest_card_state.freezed.dart';

@freezed
class GuestCardState with _$GuestCardState {
  const factory GuestCardState.initial() = _Initial;
  const factory GuestCardState.getGuestCartLoading() = GetGuestCartLoading;
  const factory GuestCardState.getGuestCartSuccess(
    GuestCartResponse guestCartResponse,
  ) = GetGuestCartSuccess;
  const factory GuestCardState.getGuestCartError(ErrorHandler error) =
      GetGuestCartError;
}
