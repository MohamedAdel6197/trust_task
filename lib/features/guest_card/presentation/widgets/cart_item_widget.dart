import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../data/model/get_guest_cart/guest_cart_response.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
            child: CachedNetworkImage(
              imageUrl: item.image ?? '',
              width: 80,
              height: 80,
              errorWidget: (_, _, _) => const Icon(Icons.image_not_supported),
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
                  const Gap(6),

                  Text(
                    locale.languageCode == 'en' ? 'Addons' : 'الإضافات',
                    style: TextStyle(color: AppColors.brown, fontSize: 14),
                  ),
                  const Gap(4),
                  Text(
                    addons,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),
                ],
              ],
            ),
          ),
          // const Gap(12),
          // Quantity Controls
          Transform.translate(
            offset: const Offset(0, 10),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.brown.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onRemove,
                    child: item.quantity == 1
                        ? const Icon(
                            Icons.delete_outline,
                            color: Colors.redAccent,
                            size: 26,
                          )
                        : const CircleAvatar(
                            radius: 14,
                            backgroundColor: AppColors.primary,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                  ),
                  const Gap(10),
                  Text(
                    '${item.quantity ?? 1}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Gap(10),
                  GestureDetector(
                    onTap: onIncrease,
                    child: const CircleAvatar(
                      radius: 14,
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.add, color: Colors.white, size: 26),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
