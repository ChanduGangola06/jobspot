import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobspot/utils/validator.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final int? maxlines;
  final int? minlines;
  final TextStyle style;
  final String hintText;
  final String labelText;
  final TextStyle hintStyle;
  final TextStyle labelStyle;
  final Function()? onTap;
  final Color fillColor;
  final bool readonly;
  final Icon? suffixicon;
  final Icon? prefixicon;
  final bool? enabled;
  final TextInputType? keyboardtype;
  const CustomTextfield({
    super.key,
    required this.controller,
    this.maxlines,
    this.minlines,
    required this.style,
    required this.hintText,
    required this.labelText,
    required this.hintStyle,
    required this.labelStyle,
    this.onTap,
    required this.fillColor,
    required this.readonly,
    this.suffixicon,
    this.prefixicon,
    this.keyboardtype,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        onTap: onTap,
        controller: controller,
        enabled: enabled,
        textCapitalization: TextCapitalization.words,
        textAlignVertical: TextAlignVertical.center,
        maxLines: maxlines,
        minLines: minlines,
        readOnly: readonly,
        keyboardType: keyboardtype,
        inputFormatters: [
          LengthLimitingTextInputFormatter(100),
          FilteringTextInputFormatter.deny(RegExp(regexToRemoveEmoji)),
        ],
        decoration: InputDecoration(
          fillColor: const Color(0xFF121417),
          hintText: hintText,
          labelText: labelText,
          hintStyle: hintStyle,
          labelStyle: labelStyle,
          suffixIcon: suffixicon,
          prefixIcon: prefixicon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF2B303F), width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
