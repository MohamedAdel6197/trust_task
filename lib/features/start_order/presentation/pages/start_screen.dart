import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../logic/cubit/get_guest_cubit.dart';
import '../../logic/cubit/get_guest_state.dart';
import '../widgets/start_order_button.dart';

class StartOrder extends StatefulWidget {
  const StartOrder({
    super.key,
    required this.locale,
    required this.changeLocale,
  });
  final Locale locale;
  final Function(Locale) changeLocale;

  @override
  State<StartOrder> createState() => _StartOrderState();
}

class _StartOrderState extends State<StartOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: BlocBuilder<GetGuestCubit, GetGuestState>(
          builder: (context, state) {
            state.whenOrNull(
              loading: () => Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),

              failure: (error) => Center(
                child: Text(
                  'Error: $error',
                  style: const TextStyle(color: AppColors.brown),
                ),
              ),
            );
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 1),

                SwicthLanguageButton(widget: widget),
                Spacer(flex: 1),
                Image.asset('assets/images/Offers.png'),
                Spacer(flex: 3),
                StartOrderButton(),
                Spacer(flex: 2),
              ],
            );
          },
        ),
      ),
    );
  }
}

class SwicthLanguageButton extends StatelessWidget {
  const SwicthLanguageButton({super.key, required this.widget});

  final StartOrder widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.changeLocale(
          widget.locale.languageCode == "ar"
              ? const Locale("en")
              : const Locale("ar"),
        );
      },
      child: Row(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(start: 20.w),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: AppColors.primary),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gap(15.w),
                Icon(
                  widget.locale.languageCode == "ar"
                      ? Icons.translate
                      : Icons.language,
                  color: AppColors.primary,
                  size: 18.sp,
                ),
                Gap(5.w),
                Text(
                  widget.locale.languageCode == "ar" ? "English" : "عربي",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
