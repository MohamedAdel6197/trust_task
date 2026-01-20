import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error_handler/error_handle.dart';
import '../../data/models/guest.dart';

part 'get_guest_state.freezed.dart';

@freezed
class GetGuestState<T> with _$GetGuestState<T> {
  const factory GetGuestState.initial() = Initial;
  const factory GetGuestState.loading() = Loading;
  const factory GetGuestState.success(Guest guest) = Success;
  const factory GetGuestState.failure(ErrorHandler error) = Failure;
}
