// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class IconButtonLargeDark extends StatelessWidget {
  final void Function() onTap;
  final String icon;
  final bool? isBackgroundColor;
  const IconButtonLargeDark({
    super.key,
    required this.onTap,
    required this.icon,
    this.isBackgroundColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return IconDefault(
      padding: SizeToken.sm,
      onTap: onTap,
      isBackgroundColor: isBackgroundColor,
      icon: icon,
      height: 19,
      colorIcon: ColorToken.dark,
    );
  }
}
