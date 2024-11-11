part of 'auth_part.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();
  AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      resizeToAvoidBottomInset: false,
      title: 'Авторизация',
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == Status.failed && Platform.isIOS) {
            showDialog(
              context: context,
              builder: (BuildContext context) => BaseCupertinoAlertDialog(
                title: 'Error',
                content: state.error,
              ),
            );
          }
          if (state.status == Status.success) {
            context.read<AuthBloc>().add(FetchProfileEvent());
            context.router.navigateNamed('/');
            context.router.removeLast();
          }
        },
        builder: (context, state) {
          return Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: AuthFormWidget(
                    loginController: _login,
                    passwordController: _password,
                  ),
                ),
                if (state.status == Status.failed)
                  Center(
                    child: Text(
                      state.error,
                      style: TextStyle(
                        color: AppColors.redColor,
                      ),
                    ),
                  ),
                Column(
                  children: [
                    BaseButton(
                      padding: AppConst.buttonPadding,
                      title: 'Войти',
                      onPressed: () => context.read<AuthBloc>().add(
                            AuthorizationEvent(
                              login: _login.text,
                              password: _password.text,
                            ),
                          ),
                    ),
                    BaseButton(
                      padding: AppConst.buttonPadding,
                      onPressed: () {},
                      title: 'Зарегистрироваться',
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
