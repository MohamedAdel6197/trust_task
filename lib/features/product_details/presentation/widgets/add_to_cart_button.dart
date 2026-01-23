import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../locale_keys.dart';

class AddToCartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? label;

  const AddToCartButton({super.key, required this.onPressed, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      margin: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          label ?? LocaleKeys.addToCart,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
