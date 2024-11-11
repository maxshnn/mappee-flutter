part of 'home_part.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == Status.unauthorized) {
          context.router.navigateNamed('/auth');
          context.router.removeLast();
        }
        if (state.status == Status.success) {
          context.read<AuthBloc>().add(FetchProfileEvent());
        }
      },
      child: AutoTabsRouter(
        duration: const Duration(milliseconds: 400),
        curve: Curves.elasticInOut,
        routes: const [
          FeedRoute(),
          MapRoute(),
          FavoriteRoute(),
          ProfileRoute(),
        ],
        builder: (context, child) => BaseTabScaffold(
          body: child,
          title: context.topRoute.title(context),
          tabBar: buildBottomNav(context, context.tabsRouter),
        ),
      ),
    );
  }

  CupertinoTabBar buildBottomNav(
    BuildContext context,
    TabsRouter tabsRouter,
  ) {
    return CupertinoTabBar(
      border: const Border(
        top: BorderSide(
          color: Colors.transparent,
        ),
      ),
      activeColor: AppColors.purpleColor,
      backgroundColor: AppColors.whiteColor,
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      items: [
        BaseBottomNavigationBarItem(
          pathToIcon: AppSvg.feed,
          title: 'Лента',
        ),
        BaseBottomNavigationBarItem(
          pathToIcon: AppSvg.map,
          title: 'Карта',
        ),
        BaseBottomNavigationBarItem(
          pathToIcon: AppSvg.favorite,
          title: 'Избранное',
        ),
        BaseBottomNavigationBarItem(
          pathToIcon: AppSvg.profile,
          title: 'Профиль',
        ),
      ],
    );
  }
}
