import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../data/model/guest_cart_response.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final Locale locale;
  final VoidCallback onIncrease;
  final VoidCallback onRemove;

  const CartItemWidget({
    super.key,
    required this.item,
    required this.locale,
    required this.onIncrease,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    // Determine product name based on locale
    final productName = locale.languageCode == 'en'
        ? item.productNameEn ?? item.productName ?? ''
        : item.productNameAr ?? item.productName ?? '';

    // Addons string
    final addons = item.addons?.map((a) => a.name).join(' | ') ?? '';

    // Logic for price display
    final price = item.price ?? '0';

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.secondary.withValues(alpha: 0.3), // Light background
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image (Helper: In RTL this will be on Right. In LTR on Left)
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              item.image ?? '',
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) =>
                  const Icon(Icons.image_not_supported),
            ),
          ),
          const Gap(12),
          // Product Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.brown,
                  ),
                ),
                const Gap(4),
                Text(
                  '$price ${locale.languageCode == 'en' ? 'EGP' : 'ج.م'}',
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                if (addons.isNotEmpty) ...[
                  const Gap(4),
                  Text(
                    addons,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                ],
              ],
            ),
          ),
          const Gap(12),
          // Quantity Controls
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.secondary.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: onIncrease,
                  child: const CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.add, color: Colors.white, size: 16),
                  ),
                ),
                const Gap(8),
                Text(
                  '${item.quantity ?? 1}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Gap(8),
                GestureDetector(
                  onTap: onRemove,
                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.redAccent,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
