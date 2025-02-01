// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class TextBodyB1Dark extends StatelessWidget {
  final int? maxLines;
  final String text;
  final bool overflow;
  final Color? color;
  const TextBodyB1Dark({
    super.key,
    this.maxLines,
    required this.text,
    this.overflow = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextDefault(
      text: text,
      textStyle: Style.b1(color: ColorToken.dark),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}