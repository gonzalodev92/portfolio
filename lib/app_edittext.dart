import 'package:flutter/material.dart';
import 'package:gonzalolopez_webpage/styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key key,
    @required this.name,
    @required this.controller,
    @required this.colorBorderActive,
    @required this.colorBorder,
    this.fillColor,
    this.minLines = -1,
    this.maxLines = -1,
    this.fontSize = -1.0,
    this.radius = -1.0,
    this.width = -1,
    this.obscureText = false,
    this.onTap,
    this.inputType,
    this.textColor,
    this.focusNode,
  }) : super(key: key);

  final String name;
  final int minLines, maxLines;
  final double fontSize;
  final double radius;
  final VoidCallback onTap;
  final TextEditingController controller;
  final TextInputType inputType;
  final Color colorBorderActive;
  final Color colorBorder;
  final Color fillColor;
  final Color textColor;
  final double width;
  final FocusNode focusNode;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
      ),
      child: Container(
        alignment: Alignment.center,
        width: (width == -1) ? null : width,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: TextFormField(
          textAlign: TextAlign.center,
          minLines: (minLines != -1) ? minLines : null,
          maxLines: (minLines != -1) ? maxLines : null,
          cursorColor: (textColor != null) ? textColor : Colors.white,
          controller: controller,
          keyboardType: inputType,
          obscureText: obscureText,
          focusNode: (focusNode != null) ? focusNode : null,
          style: TextStyle(
            fontSize: (fontSize != -1.0) ? fontSize : 16.0,
            color: (textColor != null) ? textColor : Colors.white,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: (fillColor != null) ? fillColor : AppColors.hexToColor('A7E3E7'),
            hintText: name,
            hintStyle: TextStyle(
              fontSize: (fontSize != -1.0) ? fontSize : 16.0,
              color: (textColor != null) ? textColor : Colors.white,
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorBorder),
              borderRadius: (radius != -1) ? BorderRadius.circular(radius) : BorderRadius.circular(26.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: colorBorder),
              borderRadius: (radius != -1) ? BorderRadius.circular(radius) : BorderRadius.circular(26.0),
            ),
            contentPadding: const EdgeInsets.all(14.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorBorderActive),
              borderRadius: (radius != -1) ? BorderRadius.circular(radius) : BorderRadius.circular(26.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorBorder,
              ),
              borderRadius: (radius != -1) ? BorderRadius.circular(radius) : BorderRadius.circular(26.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: (radius != -1) ? BorderRadius.circular(radius) : BorderRadius.circular(26.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: (radius != -1) ? BorderRadius.circular(radius) : BorderRadius.circular(26.0),
            ),
          ),
        ),
      ),
    );
  }
}
