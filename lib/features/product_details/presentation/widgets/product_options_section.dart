import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../data/model/product_addons_response.dart';

class ProductOptionsSection extends StatefulWidget {
  final String title;
  final List<Option> options;
  final ValueChanged<Option> onOptionSelected;

  const ProductOptionsSection({
    super.key,
    required this.title,
    required this.options,
    required this.onOptionSelected,
  });

  @override
  State<ProductOptionsSection> createState() => _ProductOptionsSectionState();
}

class _ProductOptionsSectionState extends State<ProductOptionsSection> {
  Option? _selectedOption;

  @override
  void initState() {
    super.initState();
    if (widget.options.isNotEmpty) {
      _selectedOption = widget.options.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return Container(
      width: double.infinity,
      color: Colors.white.withValues(alpha: 0.5), // Semi-transparent background
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //
        children: [
          // Title with red asterisk
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(
                  text: ' *',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // Options List
          ...widget.options.map((option) {
            final label = locale.languageCode == 'en'
                ? option.label
                : option.labelAr;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOption = option;
                });
                widget.onOptionSelected(option);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      label ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.brown,
                      ),
                    ),
                    const SizedBox(width: 12),
                    _buildRadioButton(option == _selectedOption),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildRadioButton(bool isSelected) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black, // Black border for unselected
        ),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 14,
                height: 14,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, // Selected fill
                ),
              ),
            )
          : null,
    );
  }
}
