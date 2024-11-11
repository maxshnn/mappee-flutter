part of 'profile_part.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        switch (state.status) {
          case Status.loading && Status.initial:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Status.unauthorized:
            return Center(
              child: CupertinoButton(
                child: const Text('Войти'),
                onPressed: () => context.router.navigateNamed('/auth'),
              ),
            );
          case Status.success:
            return ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 27.0),
                  child: UserInfoWidget(
                    icon: AppSvg.profile,
                    email: state.user!.email,
                    name: state.user!.nickname,
                  ),
                ),
                TileButtonWidget(
                  title: 'Выйти',
                  onTap: () => context.read<AuthBloc>().add(
                        LogoutEvent(),
                      ),
                  color: AppColors.redColor,
                ),
              ],
            );
          default:
            return Center(
              child: Text(state.error),
            );
        }
      },
    );
  }
}
