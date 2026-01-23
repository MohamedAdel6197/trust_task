import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../locale_keys.dart';

class CouponSectionWidget extends StatefulWidget {
  const CouponSectionWidget({super.key});

  @override
  State<CouponSectionWidget> createState() => _CouponSectionWidgetState();
}

class _CouponSectionWidgetState extends State<CouponSectionWidget> {
  late final TextEditingController _controller;
  bool _canApply = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_updateCanApply);
  }

  void _updateCanApply() {
    setState(() {
      _canApply = _controller.text.trim().isNotEmpty;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 50,
            child: TextField(
              controller: _controller,
              cursorColor: AppColors.brown,

              decoration: InputDecoration(
                hintText: LocaleKeys.enterCopuponHere,
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.delete_outline),
                  color: AppColors.primary.withValues(alpha: 0.3),
                  onPressed: () {
                    _controller.clear();
                  },
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.brown),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.brown),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
        ),
        const Gap(12),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: _canApply ? () {} : null,
              style: ElevatedButton.styleFrom(
                disabledBackgroundColor: AppColors.lightPink,
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: Text(
                LocaleKeys.apply,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
