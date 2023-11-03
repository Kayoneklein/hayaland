import 'package:flutter/material.dart';
import 'package:hayaland/views/utils/h_text_styles.dart';

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
    return Text(
      text,
      style: style ?? HTextStyles.body(),
      textAlign: align,
    );
  }
}
