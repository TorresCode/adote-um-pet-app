import 'package:flutter/material.dart';

import '../../design_system.dart';

class TextInputGrayDs extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final Function(String)? validator;
  final double height;

  const TextInputGrayDs({
    super.key,
    this.label = '',
    required this.controller,
    this.validator,
    this.height = 45,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: height,
      width: size.width,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.inputGrayColor,
          hintText: label,
          hintStyle: const TextStyle(fontSize: 12),
          contentPadding: const EdgeInsets.only(left: 30),
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
