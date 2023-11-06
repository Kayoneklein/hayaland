part of '../index.dart';

class TopNav extends StatelessWidget {
  const TopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: size.width * 0.2);
    return SizedBox(
      height: size.height * 0.15,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              HImages.logo,
              width: size.width * 0.2,
            ),
            VerticalSpace(size.width * 0.1),
            const _TopNavText(text: 'Top Nav 1'),
            const _TopNavText(text: 'Top Nav 2'),
            Icon(
              Icons.search,
              size: size.width * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

class _TopNavText extends StatelessWidget {
  final String text;
  const _TopNavText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
      return MouseRegion(
        onExit: (PointerExitEvent hovered) {
          context.read<HomeBloc>().add(UpdateHoverAction(null));
        },
        onHover: (PointerHoverEvent hovered) {
          context.read<HomeBloc>().add(UpdateHoverAction(text));
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            border: state.hoveredNavItem == text
                ? const Border(
                    bottom: BorderSide(
                      color: HColors.black,
                      width: 2,
                    ),
                  )
                : null,
          ),
          child: HText(
            text: text,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    });
  }
}
