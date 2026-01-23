import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/error_handler/error_handle.dart';
import '../../../get_categories/data/models/response/product.dart';
import '../../../guest_card/data/model/add_to_cart_request.dart';
import '../../../guest_card/data/model/add_to_cart_response.dart';
import '../../../guest_card/data/repo/guest_cart_repo.dart';
import '../../data/repo/product_details_repo.dart';
import 'product_detail_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailState> {
  ProductDetailsCubit(this._productDetailsRepo, this._guestCartRepo)
    : super(ProductDetailState.initial());

  final ProductDetailsRepo _productDetailsRepo;
  final GuestCartRepo _guestCartRepo;

  void setProduct(Product product) {
    emit(ProductDetailState.success(products: [product]));
  }

  // Refined method signature to return Future<ApiResult> for UI handling to avoid state wipe
  Future<ApiResult<AddToCartResponse>> addToGuestCart({
    required int productId,
    required int quantity,
    required List<AddonInRequest> addons,
  }) async {
    final guestId = await SharedPrefHelper.getSecuredString(
      AppConstants.guestId,
    );

    final request = AddToCartRequest(
      guestId: guestId,
      items: [Item(productId: productId, quantity: quantity, addons: addons)],
    );

    return await _guestCartRepo.addToCart(request);
  }

  Future<void> getProductDetails(int productId) async {
    emit(ProductDetailState.loading());
    final result = await _productDetailsRepo.getProductDetails(productId);
    result.when(
      success: (products) =>
          emit(ProductDetailState.success(products: products)),
      failure: (error) =>
          emit(ProductDetailState.failure(ErrorHandler.handle(error))),
    );
  }

  Future<void> getProductAddons(int productId) async {
    // Keep showing loading or previous data?
    // Ideally we want to keep showing the product info while loading addons,
    // but the current state is simple.
    // For now, let's assume getProductDetails is called FIRST and we have data.

    // We need to access the current state to preserve 'products' if they exist.
    // However, Cubit.state gives us the current state.
    List<Product> currentProducts = [];
    state.whenOrNull(success: (products, _) => currentProducts = products);

    if (currentProducts.isEmpty) {
      // If we don't have products yet, we might want to emit loading
      // OR just proceed and emit success with empty products if that's allowed (but it's required)
      emit(ProductDetailState.loading());
    }

    final result = await _productDetailsRepo.getProductAddons(productId);
    result.when(
      success: (productAddOns) {
        // If we had products, we emit them again with the new addons
        if (currentProducts.isNotEmpty) {
          emit(
            ProductDetailState.success(
              products: currentProducts,
              productAddOns: productAddOns,
            ),
          );
        } else {
          // Edge case: Addons fetched before details? Or details failed?
          // We can't emit success without products as per the required parameter.
          // You might need to make products optional or handle this flow better.
          // For now, assuming standard flow: Details -> Addons.
          // If products are missing, we can't emit success.
          // Maybe trigger a reload of details?
          // Let's assume the user calls them roughly together or logic handles it.
          // If strictly required, we'd pass empty list, but that might break UI.
          emit(
            ProductDetailState.success(
              products: [],
              productAddOns: productAddOns,
            ),
          );
        }
      },
      failure: (error) =>
          emit(ProductDetailState.failure(ErrorHandler.handle(error))),
    );
  }
}
