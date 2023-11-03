part of '../index.dart';

class MarketRow extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final bool showIconRight;
  const MarketRow({
    Key? key,
    this.showIconRight = true,
    required this.icon,
    required this.description,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: size.width > tablet
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: showIconRight ? size.width * 0.38 : size.width * 0.2,
                  child: showIconRight
                      ? _TextSection(title: title, description: description)
                      : _ImageSection(icon: icon),
                ),
                const HorizonTapSpace(20),
                SizedBox(
                  width: size.width * 0.2,
                  child: showIconRight
                      ? _ImageSection(icon: icon)
                      : _TextSection(title: title, description: description),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TextSection(title: title, description: description),
                const HorizonTapSpace(20),
                _ImageSection(icon: icon),
              ],
            ),
    );
  }
}

class _TextSection extends StatelessWidget {
  final String title;
  final String description;
  const _TextSection({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HText(
          text: title,
          style: HTextStyles.h2(fontSize: size.width * 0.02),
        ),
        HText(
          text: description,
          style: HTextStyles.body(fontSize: 12),
        ),
      ],
    );
  }
}

class _ImageSection extends StatelessWidget {
  final String icon;
  const _ImageSection({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Image.asset(
        icon,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
