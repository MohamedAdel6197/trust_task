import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/routing/routes.dart';
import '../../data/models/response/product.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key, required this.product});

  final Product product;

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
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.productDetails,
            arguments: product,
          );
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: product.image ?? '',
                width: 85,
                height: 85,
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/images/loadingImage2.gif"),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.image),
              ),
              /* Image.network(
                product.image ?? '',
                width: 85,
                height: 8Color.fromARGB(255, 238, 238, 238)it: BoxFit.cover,
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
              ),*/
            ),
            const SizedBox(width: 16),
            // Text Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // Assuming the widget handles locale externally or we pass locale to it?
                    // The previous code passed the resolved string (nameAr/nameEn).
                    // If we pass the object, we need to know which name to show.
                    // However, the HomeScreen logic was:
                    // name: widget.locale.languageCode == 'ar' ? product.nameAr : product.nameEn
                    // So the widget just displayed a String.
                    // Now we have the OBJECT. We don't have the LOCALE inside this item widget unless we pass it.
                    // BUT, looking at the previous code, HomeScreen was doing the locale check.
                    // So either we pass locale to ProductListItem, OR we stick to passing strings AND the object (dirty).
                    // CLEANEST: Pass Product AND Locale.
                    // OR: Resolve the name/price in HomeScreen and pass them as "display" fields, BUT pass Product for navigation.
                    // Let's modify the plan: ProductListItem should accept Product AND Locale?
                    // Or just let HomeScreen resolve the strings? If HomeScreen resolves strings, we still need the Product for navigation.
                    // So: required this.product, required this.productName, required this.productPrice
                    // This allows display without logic, but passes full object for nav.
                    // Let's try to infer from product if possible, but we don't have locale here.
                    // Wait, check HomeScreen usage. It has `widget.locale`.
                    // So let's stick to `product.name`? No, that's possibly just one language.
                    // Let's use `product.nameEn` or `Ar`? We don't know locale.
                    // Revised Plan for this step:
                    // ProductListItem(product: product, locale: locale)
                    // Then we can do logic inside.
                    // Or stick to:
                    // ProductListItem(product: product) and assume we can get locale from context?
                    // `Localizations.localeOf(context)` works!
                    Localizations.localeOf(context).languageCode == 'ar'
                        ? product.nameAr ?? ''
                        : product.nameEn ?? '',
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
                    Localizations.localeOf(context).languageCode == 'ar'
                        ? "${product.priceTax} ج.م"
                        : "${product.priceTax} EGP",
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
      ),
    );
  }
}
