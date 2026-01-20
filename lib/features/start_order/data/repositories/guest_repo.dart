import '../../../../core/constants/string_constants.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/error_handler/error_handle.dart';
import '../api_service.dart/api_guest_service.dart';
import '../models/guest.dart';

class GuestRepo {
  final ApiGuestService apiGuestService;
  GuestRepo(this.apiGuestService);

  Future<ApiResult<Guest>> getGuests() async {
    try {
      final response = await apiGuestService.getGuests();
      // Save guest ID to local storage (data layer responsibility)
      await SharedPrefHelper.setSecuredString(
        AppConstants.guestId,
        response.guestId,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
