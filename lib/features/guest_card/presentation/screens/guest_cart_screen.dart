import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../locale_keys.dart';
import '../../../product_details/presentation/widgets/back_button.dart';
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
                            "No items in cart", // Add key if available
                            style: const TextStyle(color: AppColors.brown),
                          ),
                        );
                      }
                      return SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return CartItemWidget(
                                  item: items[index],
                                  locale: locale,
                                  onIncrease: () {},
                                  onRemove: () {},
                                );
                              },
                            ),
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
          child: ElevatedButton(
            onPressed: () {},
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
          ),
        ),
      ),
    );
  }
}
