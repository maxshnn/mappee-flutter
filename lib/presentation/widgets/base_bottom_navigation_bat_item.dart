part of 'widget_part.dart';

class BaseBottomNavigationBarItem extends BottomNavigationBarItem {
  final String pathToIcon;
  final String title;
  final double? height;
  final Color? activeColor;

  BaseBottomNavigationBarItem({
    required this.pathToIcon,
    required this.title,
    this.height,
    this.activeColor,
  }) : super(
          icon: SvgPicture.asset(pathToIcon, height: height ?? 25),
          label: title,
          activeIcon: SvgPicture.asset(
            pathToIcon,
            height: height ?? 25,
            colorFilter: ColorFilter.mode(
              activeColor ?? AppColors.purpleColor,
              BlendMode.srcIn,
            ),
          ),
        );
}
