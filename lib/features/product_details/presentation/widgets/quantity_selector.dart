import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class QuantitySelector extends StatefulWidget {
  final int initialQuantity;
  final ValueChanged<int> onQuantityChanged;

  const QuantitySelector({
    super.key,
    this.initialQuantity = 1,
    required this.onQuantityChanged,
  });

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialQuantity;
  }

  void _increment() {
    setState(() {
      quantity++;
      widget.onQuantityChanged(quantity);
    });
  }

  void _decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        widget.onQuantityChanged(quantity);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF3E9E2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: _decrement,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.grey,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(4),
              child: const Icon(Icons.remove, color: Colors.black54, size: 24),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '$quantity',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: _increment,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(4),
              child: const Icon(Icons.add, color: Colors.white, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}
