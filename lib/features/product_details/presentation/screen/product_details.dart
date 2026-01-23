import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/networking/api_result/api_result.dart';
import '../../../get_categories/data/models/response/product.dart';
import '../../../guest_card/data/model/add_to_cart_request.dart' as req;
import '../../../guest_card/logic/cubit/guest_card_cubit.dart';
import '../../data/model/product_addons_response.dart';
import '../../logic/cubit/product_detail_cubit.dart';
import '../../logic/cubit/product_detail_state.dart';
import '../widgets/add_to_cart_button.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/product_image_slider.dart';
import '../widgets/product_info_section.dart';
import '../widgets/product_options_section.dart';
import '../widgets/quantity_selector.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late Locale locale;
  int quantity = 1;

  // Map addon ID (String) to selected option
  Map<String, Option> selectedOptionsMap = {};

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    locale = Localizations.localeOf(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocBuilder<ProductDetailsCubit, ProductDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (products, addonsResponse) {
              if (products.isEmpty) {
                return const Center(child: Text('No product found'));
              }
              final firstProduct = products.first;

              return SafeArea(
                child: Column(
                  children: [
                    CustomAppBar(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductImageSlider(imageUrl: firstProduct.image),

                            ProductInfoSection(
                              name: locale.languageCode == 'en'
                                  ? firstProduct.nameEn ?? ''
                                  : firstProduct.nameAr ?? '',
                            ),

                            // Product Price and Quantity Row
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    locale.languageCode == 'en'
                                        ? "${firstProduct.priceTax ?? ''} EGP"
                                        : "${firstProduct.priceTax ?? ''} ج.م",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.brown,
                                    ),
                                  ),
                                  QuantitySelector(
                                    onQuantityChanged: (qty) {
                                      setState(() {
                                        quantity = qty;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),

                            // Description Section
                            Container(
                              width: double.infinity,
                              color: Colors.white.withOpacity(0.5),
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                locale.languageCode == 'en'
                                    ? firstProduct.descriptionEn ?? ''
                                    : firstProduct.descriptionAr ?? '',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: AppColors.brown,
                                ),
                              ),
                            ),

                            // Addons Sections
                            if (addonsResponse != null &&
                                addonsResponse.blocks != null)
                              ...addonsResponse.blocks!.expand((block) {
                                return block.addons?.map((addon) {
                                      return Column(
                                        children: [
                                          ProductOptionsSection(
                                            title: locale.languageCode == 'en'
                                                ? addon.title ?? ''
                                                : addon.titleAr ?? '',
                                            options: addon.options ?? [],
                                            onOptionSelected: (selected) {
                                              setState(() {
                                                selectedOptionsMap[addon.id ??
                                                        (addon.title ?? '')] =
                                                    selected;
                                              });
                                            },
                                          ),
                                          const SizedBox(height: 1),
                                        ],
                                      );
                                    }) ??
                                    [];
                              }),

                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),

                    // Bottom Button Area
                    AddToCartButton(
                      onPressed: () async {
                        final List<req.AddonInRequest> addonsInRequest =
                            selectedOptionsMap.entries
                                .map(
                                  (entry) => req.AddonInRequest(
                                    id: int.tryParse(entry.key) ?? 0,
                                    name: entry.value.label,
                                    price: entry.value.price,
                                  ),
                                )
                                .toList();

                        final result = await context
                            .read<ProductDetailsCubit>()
                            .addToGuestCart(
                              productId: firstProduct.id ?? 0,
                              quantity: quantity,
                              addons: addonsInRequest,
                            );

                        if (context.mounted) {
                          result.when(
                            success: (response) {
                              context.read<GuestCardCubit>().getGuestCart();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    response.message ?? 'Added to cart',
                                  ),
                                ),
                              );
                            },
                            failure: (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Error: ${error.toString()}'),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              );
            },
            failure: (error) =>
                Center(child: Text(error.failure.message.toString())),
          );
        },
      ),
    );
  }
}
