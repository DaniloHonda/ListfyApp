import 'package:flutter/material.dart';
import 'package:listfy_app/utils/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? fontSize;
  final Widget? icon;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.fontSize,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final textWidget = Flexible(
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: fontSize ?? 18,
        ),
      ),
    );

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Constants.black,
          foregroundColor: Constants.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 0,
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  icon!,
                  const SizedBox(width: 10),
                  textWidget,
                ],
              )
            : textWidget,
      ),
    );
  }
}
