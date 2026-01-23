import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../locale_keys.dart';
import '../../data/model/get_guest_cart/guest_cart_response.dart';

class PaymentDetailsWidget extends StatelessWidget {
  final GuestCartResponse cartResponse;
  final Locale locale;

  const PaymentDetailsWidget({
    super.key,
    required this.cartResponse,
    required this.locale,
  });

  @override
  Widget build(BuildContext context) {
    final isEn = locale.languageCode == 'en';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.paymentDetails,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.brown,
          ),
        ),
        const Gap(12),
        _buildRow(
          LocaleKeys.totalPrice,
          '${cartResponse.totalPrice} ${isEn ? 'EGP' : 'ج.م'}',
        ),
        const Gap(8),
        _buildRow(
          LocaleKeys.tax,
          '${cartResponse.vat} ${isEn ? 'EGP' : 'ج.م'}',
        ),
        const Gap(12),
        // Dotted line
        Row(
          children: List.generate(
            30,
            (index) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  height: 1,
                  color: Colors.grey.withValues(alpha: 0.5),
                ),
              ),
            ),
          ),
        ),
        const Gap(12),
        _buildRow(
          LocaleKeys.total,
          '${cartResponse.totalPriceWithTax} ${isEn ? 'EGP' : 'ج.م'}',
          isBold: true,
        ),
      ],
    );
  }

  Widget _buildRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          value,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: isBold ? 18 : 16,
            color: AppColors.brown,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: isBold ? 18 : 16,
            color: AppColors.brown,
          ),
        ),
      ],
    );
  }
}
