part of 'widget_part.dart';

class BaseAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  const BaseAlertDialog({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: const [
        Dialog(
          child: Text("ok"),
        )
      ],
    );
  }
}
