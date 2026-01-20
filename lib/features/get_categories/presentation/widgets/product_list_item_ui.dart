import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(8),
      /*decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 2),
            blurRadius: 5,
          ),
        ],
      ),*/
      child: Row(
        children: [
          // Image on the Right
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              image,
              width: 85,
              height: 85,
              fit: BoxFit.cover,
              // loadingBuilder: (context, child, loadingProgress) => const Center(
              //   child: CircularProgressIndicator(color: AppColors.primary),
              // ),
              cacheHeight: 85,
              cacheWidth: 85,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 85,
                height: 85,
                color: Colors.grey.shade200,
                child: const Icon(Icons.image_not_supported),
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Text Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          // Add Button
          Container(
            width: 22,
            height: 22,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 20),
          ),
        ],
      ),
    );
  }
}
