part of 'widget_part.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool? resizeToAvoidBottomInset;
  const BaseScaffold({
    Key? key,
    required this.title,
    required this.body,
    this.resizeToAvoidBottomInset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? true,
      backgroundColor: Colors.grey[100],
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColors.whiteColor,
        border: const Border(
          bottom: BorderSide(
            color: Colors.transparent,
          ),
        ),
        middle: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
        ),
      ),
      child: body,
    );
  }
}
