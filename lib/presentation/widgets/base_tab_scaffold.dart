part of 'widget_part.dart';

class BaseTabScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final CupertinoTabBar tabBar;
  const BaseTabScaffold({
    Key? key,
    required this.title,
    required this.body,
    required this.tabBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: Colors.grey[100],
      tabBar: tabBar,
      tabBuilder: (context, index) => CupertinoTabView(
        builder: (context) => BaseScaffold(
          title: title,
          body: body,
        ),
      ),
    );
  }
}
