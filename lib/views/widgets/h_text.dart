import 'package:flutter/material.dart';

class HText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;
  const HText({
    Key? key,
    required this.text,
    this.style,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      text,
      style: style ?? theme.textTheme.bodyMedium,
      textAlign: align,
    );
  }
}
