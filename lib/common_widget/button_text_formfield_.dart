
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class ButtonCustomTextFormField extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonCustomTextFormField({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding:  EdgeInsets.all(8.0.sp),
        child: Container(
          width: double.infinity,
          height: 53.h,
          decoration: BoxDecoration(
            color:  AppColors.cFFFFFF,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.blue)
          ),
          child:   Center(child: Text(text,style: TextFontStyle.arabic16c161C12StyleMeQuran500)),
        ),
      ),
    );
  }
}