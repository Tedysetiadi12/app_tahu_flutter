import 'package:app_tahhu/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.trailing});

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Pastikan widget memiliki lebar yang jelas
      child: ListTile(
        leading: Icon(icon, size: 28, color: TColors.primary),
        title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        subtitle: Text(subTitle,
            style: Theme.of(context).textTheme.bodySmall), // Fix subtitle
        trailing: trailing,
      ),
    );
  }
}
