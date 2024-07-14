import 'package:flutter/material.dart';

import '../../colors.dart';

class InputTextField extends StatelessWidget {
  final String label;
  final TextEditingController inputController;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmitted;
  final FormFieldValidator onValidator;
  final TextInputType keyboardType;
  final bool enable;
  const InputTextField({
    super.key,
    required this.label,
    required this.inputController,
    required this.focusNode,
    required this.onFieldSubmitted,
    required this.keyboardType,
    required this.onValidator,
    this.enable=true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      focusNode: focusNode,
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      cursorWidth: 1,
      onFieldSubmitted: onFieldSubmitted,
      validator: onValidator,
      enabled: enable,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 2,
                color: AppColors.inputBorderColor
            ),
            borderRadius: BorderRadius.circular(5)
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 2,
                color: Colors.red
            ),
            borderRadius: BorderRadius.circular(5)
        ),
      ),
    );
  }
}
