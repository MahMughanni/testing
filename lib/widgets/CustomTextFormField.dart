import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.validator,
    this.isPassword,
    this.suffixIcon,
    this.initialValue,
    this.controller,
    this.labelText,
    this.maxLine,
    this.keyboardType,
    this.enabled,
    this.fontSize,
    this.padding,
    this.contentPadding,
    this.focus,
    this.prefixIcon,
    this.suffixIconConstraints,
    this.hintStyle,
    this.titleStyle,
    this.textInputAction,
    this.onChanged,
  }) : super(key: key);
  final String? hintText, initialValue, labelText;
  final String? Function(String?)? validator;
  final bool? isPassword;
  final Widget? suffixIcon;
  final double? fontSize;

  final Widget? prefixIcon;
  final TextEditingController? controller;
  final int? maxLine;
  final TextInputType? keyboardType;
  final bool? enabled;
  final EdgeInsetsDirectional? padding;
  final EdgeInsetsDirectional? contentPadding;
  final void Function(String)? focus;
  final BoxConstraints? suffixIconConstraints;
  final TextStyle? hintStyle;
  final TextStyle? titleStyle;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8),
      child: TextFormField(
        enabled: enabled,
        onChanged: onChanged,
        maxLines: maxLine ?? 1,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        controller: controller,
        initialValue: initialValue,
        onFieldSubmitted: focus ?? (_) => FocusScope.of(context).nearestScope,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: isPassword ?? false,
        validator: validator,
        style: titleStyle ?? Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIconConstraints: suffixIconConstraints,
          hintStyle: hintStyle ?? Theme.of(context).textTheme.bodySmall,
          contentPadding: contentPadding ?? const EdgeInsets.all(15),
          label: Text(labelText ?? ''),
          labelStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.grey, fontSize: fontSize ?? 13),
          suffixIcon: suffixIcon,
          fillColor: ColorConstManger.formFieldFiledColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(9),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

class ColorConstManger {
  static const Color primaryColor = Color(0xff218BDB);
  static const Color formFieldFiledColor = Color(0xffF2F2F2);
  static const int backGroundBottomSheet = 0xFF505050;
  static const int backGroundContainer = 0xffFFF9F0;
  static const int borderContainer = 0xffF3F3F3;
  static const Color titleTextFormFieldColor = Color(0xFF6C6969);
  static const Color lightGrey = Color(0xFF707070);
  static const Color primaryBorder = Color(0xFF4375FF);
  static const Color borderBlue = Color(0xFF90AEFF);
  static Color greyIconBorder = const Color(0xFF8C8C8C);
  static const Color borderWhite = Color(0xFFE2E2E2);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const int backGroundSnackBarFalse = 0xFFFCF3E4;
  static const int borderSnackBarFalse = 0xFFDAA545;
  static const int backGroundSnackBarTrue = 0xFFE9F7E7;
  static const int primaryTextColor = 0xFF000000;
  static const int primaryButtonColor = 0xFF4375FF;
  static const int borderSnackBarTrue = 0xFF70B668;
  static const Color red = Colors.red;
}
