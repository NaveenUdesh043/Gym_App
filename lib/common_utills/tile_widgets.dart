
import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/common_utills/const.dart';


class TileWidget extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final void Function()? onTap;
  TileWidget({
    this.icon,
    required this.title,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 25,
        color: Colors.blue,
      ),
      title: Text(
        title!,
        style:
        TextStyle(color: AppColors.black.withOpacity(0.5), fontSize: 16),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: AppColors.black.withOpacity(0.5),
      ),
    );
  }
}
