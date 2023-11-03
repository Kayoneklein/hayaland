import 'package:flutter/material.dart';

class HTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? icon;
  final double? width;
  final bool? filled;
  final Color? fillColor;
  const HTextFormField({
    Key? key,
    required this.hintText,
    this.icon,
    this.width,
    this.filled,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: width ?? size.width,
      child: TextFormField(
        enabled: false,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
          prefixIcon: icon,
          fillColor: fillColor,
          filled: filled,
        ),
      ),
    );
  }
}
