import 'package:flutter/material.dart';
import 'package:hayaland/views/widgets/h_text.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color? color;
  final Color? borderSideColor;
  final Color? backgroundColor;
  final Size? size;
  final double borderRadius;
  final double borderWidth;
  const Button({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color,
    this.borderSideColor,
    this.backgroundColor,
    this.size,
    this.borderRadius = 2,
    this.borderWidth = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: () => onPressed(),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderSideColor != null
                ? BorderSide(color: borderSideColor!, width: borderWidth)
                : BorderSide.none,
          ),
        ),
        fixedSize: size != null ? MaterialStateProperty.all<Size>(size!) : null,
        backgroundColor: backgroundColor != null
            ? MaterialStateProperty.all<Color>(
                backgroundColor!,
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: HText(
            text: text,
            align: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(color: color),
          ),
        ),
      ),
    );
  }
}
