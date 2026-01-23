bool isLoggedInUser = false;

class AppConstants {
  // shared keys
  static const String guestId = 'guestId';
  static const String currentLocale = 'currentLocale';
  // api end points
  static const String baseUrl = 'https://dushkaburger.com/wp-json/';
  static const String getGuest = 'guestcart/v1/guestid';
  static const String getCategories = 'custom-api/v1/categories';
  static const String getProductDetails = 'custom-api/v1/products';
  static const String getProductAddons = 'proaddon/v1/get2';
  static const String getGuestCart = 'guestcart/v1/cart';
  static const String addToOrRemoveFromCart = 'guestcart/v1/cart';
}
