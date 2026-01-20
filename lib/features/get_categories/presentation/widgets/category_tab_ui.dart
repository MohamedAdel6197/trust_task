import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
    required this.isSelected,
    required this.text,
    required this.image,
  });

  final bool isSelected;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : AppColors.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (image.isNotEmpty) ...[
            ClipOval(
              child: Image.network(
                image,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const SizedBox.shrink(),
              ),
            ),
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: TextStyle(
              color: isSelected ? AppColors.white : AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
