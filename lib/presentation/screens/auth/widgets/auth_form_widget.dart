part of '../auth_part.dart';

class AuthFormWidget extends StatelessWidget {
  final TextEditingController loginController;
  final TextEditingController passwordController;
  const AuthFormWidget({
    Key? key,
    required this.loginController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoFormSection.insetGrouped(
        margin: const EdgeInsets.fromLTRB(0, 8, 16, 8),
        backgroundColor: AppColors.whiteColor,
        decoration: BoxDecoration(
          color: AppColors.whiteFormColor,
          border: Border.all(width: 0, color: Colors.transparent),
        ),
        children: [
          BaseTextFormFieldRow(
            placeholder: 'Логин или Почта',
            controller: loginController,
            textInputType: TextInputType.emailAddress,
          ),
          BaseTextFormFieldRow(
            placeholder: 'Пароль',
            controller: passwordController,
            textInputType: TextInputType.visiblePassword,
          ),
        ]);
  }
}
