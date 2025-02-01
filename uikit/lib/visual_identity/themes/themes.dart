import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
part '../schemes/color_schemes.dart';

ThemeData get theme => ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      appBarTheme: const AppBarTheme(
        titleSpacing: 0,
        toolbarHeight: kToolbarHeight,
        backgroundColor: ColorToken.light,
        surfaceTintColor: ColorToken.light
      ),
    );

void showCustomModalBottomSheet({
  required BuildContext context,
  required WidgetBuilder builder,
  bool isScrollControlled = true,
  bool isDismissible = true,
  ShapeBorder? shape,
  EdgeInsetsGeometry? padding,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: isScrollControlled,
    isDismissible: isDismissible,
    shape: shape ??
        const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(SizeToken.md),
            topEnd: Radius.circular(SizeToken.md),
          ),
        ),
    builder: (context) => Padding(
      padding: padding ??
          EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
      child: builder(context),
    ),
  );
}
