import 'package:flutter/material.dart';
import 'package:listfy_app/utils/constants.dart';

class LabeledCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;
  final double? fontSize;

  const LabeledCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: Constants.white,
            checkColor: Constants.darkPurple,
            side: const BorderSide(color: Constants.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: TextStyle(
                color: Constants.white,
                fontSize: fontSize ?? 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
