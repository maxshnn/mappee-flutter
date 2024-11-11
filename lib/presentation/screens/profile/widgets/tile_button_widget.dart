part of './../profile_part.dart';

class TileButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? color;
  const TileButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      backgroundColor: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      onTap: onTap,
      title: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Text(
          title,
          style: TextStyle(
            color: color ?? AppColors.primaryTextColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      // child: CupertinoButton(
      //   borderRadius: BorderRadius.zero,
      //   color: AppColors.whiteColor,
      //   alignment: AlignmentDirectional.centerStart,
      //   onPressed: onPressed,
      //   child: Text(
      //     title,
      //     style: TextStyle(
      //       color: color ?? AppColors.primaryTextColor,
      //       fontSize: 16.0,
      //       fontWeight: FontWeight.w400,
      //     ),
      //   ),
      // ),
    );
  }
}
