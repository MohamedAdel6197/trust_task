import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/string_constants.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../locale_keys.dart';
import '../../../product_details/presentation/widgets/back_button.dart';
import '../../data/model/add_to_cart/add_to_cart_request.dart';
import '../../data/model/remove_from_cart/remove_from_cart_request.dart';
import '../../logic/cubit/guest_card_cubit.dart';
import '../../logic/cubit/guest_card_state.dart';
import '../widgets/cart_item_widget.dart';
import '../widgets/coupon_section_widget.dart';
import '../widgets/payment_details_widget.dart';

class GuestCartScreen extends StatelessWidget {
  const GuestCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomBackButton(),
                  Text(
                    LocaleKeys.cart,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.brown,
                    ),
                  ),
                  const SizedBox(width: 48), // Spacer to balance back button
                ],
              ),
            ),

            // Content
            Expanded(
              child: BlocBuilder<GuestCardCubit, GuestCardState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    getGuestCartLoading: () => const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primary,
                      ),
                    ),
                    getGuestCartSuccess: (guestCart) {
                      final items = guestCart.cartItems ?? [];
                      if (items.isEmpty) {
                        return Center(
                          child: Text(
                            "No items in cart",
                            style: const TextStyle(color: AppColors.brown),
                          ),
                        );
                      }
                      return CustomScrollView(
                        slivers: [
                          // Cart Items List
                          SliverPadding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate((
                                context,
                                index,
                              ) {
                                final item = items[index];
                                return CartItemWidget(
                                  item: item,
                                  locale: locale,
                                  onIncrease: () async {
                                    final guestId =
                                        await SharedPrefHelper.getSecuredString(
                                          AppConstants.guestId,
                                        );
                                    if (context.mounted) {
                                      context.read<GuestCardCubit>().addToCart(
                                        AddToCartRequest(
                                          guestId: guestId,
                                          items: [
                                            Item(
                                              productId: item.productId,
                                              quantity: 1,
                                              addons: item.addons
                                                  ?.map(
                                                    (e) => AddonInRequest(
                                                      id: e.id,
                                                      name: e.name,
                                                      price: e.price,
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                  onRemove: () async {
                                    final guestId =
                                        await SharedPrefHelper.getSecuredString(
                                          AppConstants.guestId,
                                        );
                                    if (context.mounted) {
                                      context
                                          .read<GuestCardCubit>()
                                          .removeFromCart(
                                            guestId,
                                            RemoveFromCartRequest(
                                              guestId: guestId,
                                              productId: item.productId ?? 0,
                                              quantity: 1,
                                            ),
                                          );
                                    }
                                  },
                                );
                              }, childCount: items.length),
                            ),
                          ),

                          // Footer Sections
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            sliver: SliverToBoxAdapter(
                              child: Column(
                                children: [
                                  const Gap(24),
                                  const CouponSectionWidget(),
                                  const Gap(24),
                                  PaymentDetailsWidget(
                                    cartResponse: guestCart,
                                    locale: locale,
                                  ),
                                  const Gap(100), // Space for bottom button
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    getGuestCartError: (error) =>
                        Center(child: Text(error.toString())),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.backgroundColor,
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: BlocBuilder<GuestCardCubit, GuestCardState>(
            builder: (context, state) {
              final bool hasItems =
                  context.read<GuestCardCubit>().cartItemsCount > 0;
              return ElevatedButton(
                onPressed: hasItems ? () {} : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  LocaleKeys.checkout,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
