import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  final String? imageUrl;

  const ProductImageSlider({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: imageUrl != null && imageUrl!.isNotEmpty
          ? ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: imageUrl!,
                width: double.infinity,
                placeholder: (context, url) => Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/images/loadingImage2.gif"),
                  ),
                ),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.image, size: 50, color: Colors.grey),
              ),
            )
          : const Icon(Icons.image, size: 50, color: Colors.grey),
    );
  }
}
