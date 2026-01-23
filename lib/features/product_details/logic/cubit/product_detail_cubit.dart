import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/error_handler/error_handle.dart';
import '../../../get_categories/data/models/response/product.dart';
import '../../data/repo/product_details_repo.dart';
import 'product_detail_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailState> {
  ProductDetailsCubit(this._productDetailsRepo)
    : super(ProductDetailState.initial());

  final ProductDetailsRepo _productDetailsRepo;
  List<Product> _currentProducts = [];

  void setProduct(Product product) {
    _currentProducts = [product];
    emit(ProductDetailState.success(products: _currentProducts));
  }

  /*Future<void> getProductDetails(int productId) async {
    emit(ProductDetailState.loading());
    final result = await _productDetailsRepo.getProductDetails(productId);
    result.when(
      success: (products) =>
          emit(ProductDetailState.success(products: products)),
      failure: (error) =>
          emit(ProductDetailState.failure(ErrorHandler.handle(error))),
    );
  }*/

  Future<void> getProductAddons(int productId) async {
    final result = await _productDetailsRepo.getProductAddons(productId);
    result.when(
      success: (productAddOns) {
        emit(
          ProductDetailState.success(
            products: _currentProducts,
            productAddOns: productAddOns,
          ),
        );
      },
      failure: (error) =>
          emit(ProductDetailState.failure(ErrorHandler.handle(error))),
    );
  }

  // Todo : remove it to current place
  /*
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
  }*/
}
