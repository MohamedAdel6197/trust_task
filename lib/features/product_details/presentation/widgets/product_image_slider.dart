import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  final String? imageUrl;

  const ProductImageSlider({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: imageUrl != null && imageUrl!.isNotEmpty
          ? ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl!,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported, size: 50),
              ),
            )
          : const Icon(Icons.image, size: 50, color: Colors.grey),
    );
  }
}
