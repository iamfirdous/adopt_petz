import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:adopt_petz/views/widgets/svg.dart';
import 'package:flutter/material.dart';

class SeachField extends StatelessWidget {
  const SeachField({super.key, required this.onChanged, required this.controller});

  final void Function(String) onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: context.colorPrimary),
      borderRadius: BorderRadius.circular(8.0),
    );
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: context.bodyLarge?.copyWith(color: context.colorText),
      decoration: InputDecoration(
        prefixIcon: Svg(asset: Images.search, color: context.colorPrimary),
        prefixIconConstraints: const BoxConstraints(minWidth: 48.0, minHeight: 24.0),
        suffixIcon: IconButton(
          onPressed: () {
            if (controller.text.isNotEmpty) {
              controller.clear();
              onChanged('');
            }
          },
          icon: Icon(Icons.clear, color: context.colorPrimary),
        ),
        contentPadding: const EdgeInsets.all(18.0),
        hintText: Texts.search_hint,
        border: border,
        focusedBorder: border,
        enabledBorder: border,
      ),
    );
  }
}