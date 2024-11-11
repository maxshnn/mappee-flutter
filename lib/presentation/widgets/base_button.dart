part of 'widget_part.dart';

class BaseButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  const BaseButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.width,
    this.height,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 64.0,
        child: CupertinoButton(
          onPressed: onPressed,
          color: AppColors.purpleColor,
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
