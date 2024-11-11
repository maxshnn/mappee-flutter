part of 'widget_part.dart';

class BaseTextFormFieldRow extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final TextInputType? textInputType;
  const BaseTextFormFieldRow({
    Key? key,
    required this.placeholder,
    required this.controller,
    this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      keyboardType: textInputType ?? TextInputType.text,
      style: TextStyle(color: AppColors.primaryTextColor),
      placeholderStyle: TextStyle(color: AppColors.secondaryGreyTextColor, fontSize: 16, fontWeight: FontWeight.w400),
      controller: controller,
      placeholder: placeholder,
    );
  }
}
