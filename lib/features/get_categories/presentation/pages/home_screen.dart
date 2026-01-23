import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/routing/routes.dart';
import '../../../../locale_keys.dart';
import '../../../guest_card/logic/cubit/guest_card_cubit.dart';
import '../../../guest_card/logic/cubit/guest_card_state.dart';
import '../../../guest_card/presentation/widgets/cart_button.dart';
import '../../logic/cubit/get_categories_cubit.dart';
import '../../logic/cubit/get_categories_state.dart';
import '../widgets/category_tab_ui.dart';
import '../widgets/product_list_item_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.locale});
  final Locale locale;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: AppColors.secondary,
        child: SizedBox(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _buildNavItem(
                    icon: Icons.home_outlined,
                    label: LocaleKeys.home,
                    isSelected: true,
                  ),
                  _buildNavItem(
                    icon: Icons.menu_book_outlined,
                    label: LocaleKeys.menu,
                    isSelected: false,
                  ),
                ],
              ),
              Row(
                children: [
                  _buildNavItem(
                    icon: Icons.percent_outlined,
                    label: LocaleKeys.offers,
                    isSelected: false,
                  ),
                  _buildNavItem(
                    icon: Icons.person_outline,
                    label: LocaleKeys.account,
                    isSelected: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
          builder: (context, state) {
            return state.when(
              initial: () => _buildHomeSkeleton(),
              loading: () => _buildHomeSkeleton(),
              failure: (error) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.errorLoadingCategories,
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      error.failure.message ?? 'Unknown error',
                      style: const TextStyle(color: Colors.red),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<GetCategoriesCubit>().getCategories();
                      },
                      child: Text(LocaleKeys.retry),
                    ),
                  ],
                ),
              ),
              success: (categories) {
                if (categories.isEmpty) {
                  return Center(
                    child: Text(
                      LocaleKeys.noCategoriesFoundTitle,
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  );
                }

                // Ensure index is valid ensuring hot reload safety etc
                if (_selectedIndex >= categories.length) {
                  _selectedIndex = 0;
                }

                final selectedCategory = categories[_selectedIndex];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    // Categories Tabs
                    SizedBox(
                      height: 50,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            child: CategoryTab(
                              isSelected: _selectedIndex == index,
                              text: widget.locale.languageCode == 'ar'
                                  ? category.nameAr ?? ''
                                  : category.nameEn ?? '',
                              image: category.image ?? '',
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Category Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        widget.locale.languageCode == 'ar'
                            ? selectedCategory.nameAr ?? ''
                            : selectedCategory.nameEn ?? '',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.brown,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Products List
                    Expanded(
                      child:
                          selectedCategory.products == null ||
                              selectedCategory.products!.isEmpty
                          ? Center(
                              child: Text(
                                LocaleKeys.noProductFoundMsg,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : ListView.builder(
                              itemCount: selectedCategory.products!.length,
                              itemBuilder: (context, index) {
                                final product =
                                    selectedCategory.products![index];
                                return ProductListItem(product: product);
                              },
                            ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildHomeSkeleton() {
    return Skeletonizer(
      enabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          // Categories Tabs Skeleton
          SizedBox(
            height: 50,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // Category Title Skeleton
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: 150,
              height: 24,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Products List Skeleton
          Expanded(
            child: ListView.builder(
              itemCount: 13,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? AppColors.brown : Colors.grey.shade500,
            size: 26,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isSelected ? AppColors.brown : Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.guestCart);
        },
        backgroundColor: AppColors.brown,
        shape: const CircleBorder(),
        elevation: 5,
        child: BlocBuilder<GuestCardCubit, GuestCardState>(
          builder: (context, state) {
            int count = context.read<GuestCardCubit>().cartItemsCount;
            return CartButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.guestCart);
              },
              hasBadge: count > 0,
              badgeCount: count,
            );
          },
        ),
      ),
    );
  }
}
