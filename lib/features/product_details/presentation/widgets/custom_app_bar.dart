import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/routing/routes.dart';
import '../../../../locale_keys.dart';
import '../../../guest_card/logic/cubit/guest_card_cubit.dart';
import '../../../guest_card/logic/cubit/guest_card_state.dart';
import '../../../guest_card/presentation/widgets/cart_button.dart';
import 'back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomBackButton(),
          Text(
            LocaleKeys.productDetails,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.brown,
            ),
          ),
          BlocBuilder<GuestCardCubit, GuestCardState>(
            builder: (context, state) {
              int count = context.read<GuestCardCubit>().cartItemsCount;
              return CartButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.guestCart);
                },
                hasBadge: count > 0,
                badgeCount: count,
                color: AppColors.primary,
                badgeColor: AppColors.white,
              );
            },
          ),
        ],
      ),
    );
  }
}
