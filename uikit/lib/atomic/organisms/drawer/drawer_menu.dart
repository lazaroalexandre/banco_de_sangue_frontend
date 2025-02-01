// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uikit/uikit.dart';

class DrawerMenu extends StatelessWidget {
  final void Function() firstOnPressed;
  final void Function() secoundOnPressed;
  final void Function() thirdOnPressed;
  final void Function() fourthOnPressed;
  final void Function() logoutOnPressed;
  final String firstText;
  final String secoundText;
  final String thirdText;
  final String fourthText;
  final String logoutText;
  final String firstIcon;
  final String secoundIcon;
  final String thirdIcon;
  final String fourthIcon;
  final String logoutIcon;
  final String menuIcon;
  final String logo;
  const DrawerMenu({
    super.key,
    required this.firstOnPressed,
    required this.secoundOnPressed,
    required this.thirdOnPressed,
    required this.fourthOnPressed,
    required this.logoutOnPressed,
    required this.firstText,
    required this.secoundText,
    required this.thirdText,
    required this.fourthText,
    required this.logoutText,
    required this.firstIcon,
    required this.secoundIcon,
    required this.thirdIcon,
    required this.fourthIcon,
    required this.logoutIcon,
    required this.menuIcon,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding:
            const EdgeInsets.only(top: SizeToken.xl3, bottom: SizeToken.md),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: SizeToken.md),
                  child: Row(
                    children: [
                      IconButtonLargeDark(
                        icon: menuIcon,
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SvgPicture.asset(
                        logo,
                        height: SizeToken.xxl
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: SizeToken.xs,
                ),
                Column(
                  children: [
                    MenuItem(
                      text: firstText,
                      icon: firstIcon,
                      onPressed: firstOnPressed,
                    ),
                    MenuItem(
                      text: secoundText,
                      icon: secoundIcon,
                      onPressed: secoundOnPressed,
                    ),
                    MenuItem(
                      text: thirdText,
                      icon: thirdIcon,
                      onPressed: thirdOnPressed,
                    ),
                    const SizedBox(
                      height: SizeToken.sm,
                    ),
                    const DividerDefault(),
                    MenuItem(
                      text: fourthText,
                      icon: fourthIcon,
                      onPressed: fourthOnPressed,
                    ),
                  ],
                ),
              ],
            ),
            MenuItem(
              text: logoutText,
              icon: logoutIcon,
              onPressed: logoutOnPressed,
            ),
          ],
        ),
      ),
    );
  }
}
