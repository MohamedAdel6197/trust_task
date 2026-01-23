import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../locale_keys.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [Icon(Icons.arrow_back), Gap(4), Text(LocaleKeys.back)],
        ),
      ),
    );
  }
}
