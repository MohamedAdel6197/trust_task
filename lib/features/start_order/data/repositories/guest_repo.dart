import '../datasources/api_guest_service.dart';
import '../models/guest.dart';

class GuestRepo {
  final ApiGuestService apiGuestService;
  GuestRepo(this.apiGuestService);

  Future<Guest> getGuests() => apiGuestService.getGuests();
}
