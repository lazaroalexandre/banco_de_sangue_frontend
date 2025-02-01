// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uikit/uikit.dart';

class InputForm extends StatelessWidget {
  final String labelText;
  final String hintText;
  final int maxLines;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final TextInputType? keyBoardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const InputForm({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    required this.controller,
    required this.textInputAction,
    this.keyBoardType,
    this.inputFormatters,
    this.validator,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLabelL1Dark(text: labelText),
        const SizedBox(
          height: SizeToken.xs,
        ),
        InputDefault(
          paddingLeftPrefix: SizeToken.sm,
          keyBoardType: keyBoardType,
          maxLines: maxLines,
          controller: controller,
          inputFormatters: inputFormatters,
          validator: validator,
          hintText: hintText,
        ),
      ],
    );
  }
}
