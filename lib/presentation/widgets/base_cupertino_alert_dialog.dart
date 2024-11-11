part of 'widget_part.dart';

class BaseCupertinoAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  const BaseCupertinoAlertDialog({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          onPressed: () => context.router.pop(),
          child: const Text("ok"),
        )
      ],
    );
  }
}
