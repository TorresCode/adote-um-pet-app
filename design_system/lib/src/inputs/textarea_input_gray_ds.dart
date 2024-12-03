import 'package:flutter/material.dart';

import '../../design_system.dart';

class TextAreaInputGrayDs extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final Function(String)? validator;

  const TextAreaInputGrayDs({
    super.key,
    this.label = '',
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width,
      child: TextFormField(
        controller: controller,
        maxLines: 6,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.inputGrayColor,
          hintText: label,
          hintStyle: const TextStyle(fontSize: 12),
          contentPadding: const EdgeInsets.only(left: 30, top: 8),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
