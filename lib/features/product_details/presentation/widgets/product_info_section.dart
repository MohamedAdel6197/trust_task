import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class ProductInfoSection extends StatelessWidget {
  final String name;

  const ProductInfoSection({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.brown,
        ),
      ),
    );
  }
}
