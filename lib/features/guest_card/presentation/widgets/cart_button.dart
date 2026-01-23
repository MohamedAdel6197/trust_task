import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.onPressed,
    required this.hasBadge,
    required this.badgeCount,
    this.color,
    this.badgeColor,
  });

  final Color? color;
  final Color? badgeColor;
  final VoidCallback onPressed;
  final bool hasBadge;
  final int badgeCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Icon(
              // Icons.shopping_cart_outlined,
              Icons.shopping_bag_outlined,
              color: color ?? Colors.white,
              size: 30,
            ),
          ),
          if (hasBadge)
            PositionedDirectional(
              top: -6,
              end: -4,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: color ?? AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$badgeCount',
                  style: TextStyle(
                    color: badgeColor ?? AppColors.brown,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
