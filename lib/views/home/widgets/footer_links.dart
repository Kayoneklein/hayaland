part of '../index.dart';

class FooterLinks extends StatelessWidget {
  final int header;
  final List<String> links;
  final bool showLinks;
  final Function? onTap;
  const FooterLinks({
    Key? key,
    required this.header,
    required this.links,
    required this.showLinks,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          size.width > tablet
              ? HText(
                  text: 'Header $header',
                  style: theme.textTheme.headlineMedium
                      ?.copyWith(fontSize: 12, color: HColors.white),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HText(
                      text: 'Header $header',
                      style: theme.textTheme.headlineMedium
                          ?.copyWith(fontSize: 12, color: HColors.white),
                    ),
                    InkWell(
                      onTap: () {
                        if (onTap != null) {
                          onTap!();
                        }
                      },
                      child: const Icon(
                        Icons.add,
                        color: HColors.white,
                      ),
                    )
                  ],
                ),
          const VerticalSpace(5),
          if (showLinks == true || size.width > tablet)
            ...links.map((link) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: HText(
                  text: link,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 12,
                    color: HColors.white,
                  ),
                ),
              );
            }),
        ],
      ),
    );
  }
}
