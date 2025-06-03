import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';


class TextFormfieldCustom extends StatelessWidget {
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? leadingIcon;
  final String? trailingIcon;
  final bool? obscureText;
  final VoidCallback? onTrailingIconPressed;
  final FormFieldValidator<String>? validator;

  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextStyle? labelTextStyle;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool? readOnly;
  final Color? fillColor;
  final bool? filled;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final String? helperText;
  final TextStyle? helperStyle;
  final String? counterText;
  final TextStyle? counterStyle;
  final TextStyle? errorStyle;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? isDense;
  final BorderSide? borderSide;
  final VoidCallback? onTap;

  const TextFormfieldCustom({
    super.key,
    this.textStyle,
    this.controller,
    this.hintText,
    this.labelText,
    this.leadingIcon,
    this.trailingIcon,
    this.obscureText,
    this.onTrailingIconPressed,
    this.validator,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.border,
    this.errorBorder,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.readOnly = false,
    this.fillColor = AppColors.cFFFFFF,
    this.filled = true,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.hintStyle,
    this.labelTextStyle,
    this.contentPadding,
    this.helperText,
    this.helperStyle,
    this.counterText,
    this.counterStyle,
    this.errorStyle,
    this.floatingLabelBehavior,
    this.isDense = false,
    this.borderSide = const BorderSide(color: AppColors.cE1E6EF),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // readOnly: readOnly,
      onTap: onTap,
      obscureText: obscureText ?? false,
      style: textStyle,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText ?? '',
        hintStyle: hintStyle ?? TextFontStyle.arabic16c161C12StyleMeQuran500,
        labelText: labelText,
        labelStyle: labelTextStyle,
        fillColor: fillColor,
        filled: filled,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
        helperText: helperText,
        helperStyle: helperStyle,
        counterText: counterText,
        counterStyle: counterStyle,
        errorStyle: errorStyle,
        floatingLabelBehavior: floatingLabelBehavior ?? FloatingLabelBehavior.auto,
        isDense: isDense,
        border: OutlineInputBorder(
          borderRadius: borderRadius!,
          borderSide: borderSide!,
        ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius!,
              borderSide: borderSide!,
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius!,
              borderSide: borderSide!,
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius!,
              borderSide: borderSide!,
            ),
        prefixIcon: leadingIcon != null
            ? Padding(
          padding: EdgeInsets.all(12.h),
          child: SvgPicture.asset(
            leadingIcon!,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.scaleDown,
          ),
        )
            : null,
        suffixIcon: trailingIcon != null
            ? GestureDetector(
          onTap: onTrailingIconPressed,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: SvgPicture.asset(
              trailingIcon!,
              height: 24.h,
              width: 24.w,
              fit: BoxFit.scaleDown,
            ),
          ),
        )
            : suffixIcon,
      ),
    );
  }
}
