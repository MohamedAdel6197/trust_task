import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/routing/routes.dart';
import '../../../../locale_keys.dart';
import '../../logic/cubit/get_guest_cubit.dart';
import '../../logic/cubit/get_guest_state.dart';

class StartOrderButton extends StatefulWidget {
  const StartOrderButton({super.key});

  @override
  State<StartOrderButton> createState() => _StartOrderButtonState();
}

class _StartOrderButtonState extends State<StartOrderButton> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<GetGuestCubit, GetGuestState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (guest) {
            // Navigate to home screen
            log(guest.guestId);
            Navigator.of(
              context,
            ).pushNamedAndRemoveUntil(Routes.homeScreen, (route) => false);
          },
          failure: (error) {
            // Show error dialog
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(LocaleKeys.error),
                content: Text(error.toString()),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(LocaleKeys.ok),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: BlocBuilder<GetGuestCubit, GetGuestState>(
        builder: (context, state) {
          final isLoading = state is Loading;

          return Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: isLoading
                  ? null
                  : () {
                      context.read<GetGuestCubit>().getGuestInfo();
                    },
              child: isLoading
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: AppColors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(
                      LocaleKeys.startOrderNow,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
