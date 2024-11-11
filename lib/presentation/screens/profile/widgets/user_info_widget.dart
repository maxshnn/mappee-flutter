part of './../profile_part.dart';

class UserInfoWidget extends StatelessWidget {
  final String icon;
  final String? name;
  final String? email;
  final double size = 64;
  const UserInfoWidget({
    Key? key,
    required this.icon,
    this.name,
    this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          height: size,
          width: size,
        ),
        Text(
          name ?? 'Вася Пупкин',
          style: TextStyle(
            color: AppColors.primaryTextColor,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          email ?? 'vasya@pupkin.pup',
          style: TextStyle(
            color: AppColors.primaryGreyTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: e,
            ),
          )
          .toList(),
    );
  }
}
