import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/string_constants.dart';
import '../models/guest.dart';

part 'api_guest_service.g.dart';

//guest_696a95ab3ef82

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiGuestService {
  factory ApiGuestService(Dio dio) => _ApiGuestService(dio);

  @GET(AppConstants.getGuest)
  Future<Guest> getGuests();
}
