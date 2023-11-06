part of '../index.dart';

class ScrollComponent extends StatelessWidget {
  const ScrollComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: [
        if (size.width > tablet)
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext ctx, int index) {
                return const TopNav();
              },
              childCount: 1,
            ),
          ),
        if (size.width > tablet)
          const SliverAppBar(
            backgroundColor: HColors.black,
            automaticallyImplyLeading: false,
            pinned: true,
            // stretch: true,
            actions: [
              _NavItem(text: 'Home', leftPadding: false),
              _NavItem(text: 'Contact'),
              _NavItem(text: 'About us'),
              _NavItem(text: 'Marketplace'),
              _NavItem(text: 'Wishlist'),
              _NavItem(text: '', isIcon: true, rightPadding: false),
            ],
          ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext ctx, int index) {
              return const HomeBody();
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  final String? text;
  final bool isIcon;
  final bool leftPadding;
  final bool rightPadding;
  const _NavItem({
    Key? key,
    required this.text,
    this.isIcon = false,
    this.leftPadding = true,
    this.rightPadding = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double symmetricPadding = size.width * 0.035;
    final theme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Padding(
        padding: EdgeInsets.only(
          left: leftPadding ? symmetricPadding : 0,
          right: rightPadding ? symmetricPadding : size.width * 0.18,
          top: isIcon ? 10 : 20,
          bottom: isIcon ? 10 : 0.0,
        ),
        child: MouseRegion(
          onExit: (PointerExitEvent hovered) {
            context.read<HomeBloc>().add(UpdateHoverAction(null));
          },
          onHover: (PointerHoverEvent hovered) {
            context.read<HomeBloc>().add(UpdateHoverAction(text));
          },
          child: isIcon
              ? Icon(
                  Icons.shopping_cart,
                  color: state.hoveredNavItem == text
                      ? HColors.white
                      : HColors.grey,
                )
              : HText(
                  text: text ?? '',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: state.hoveredNavItem == text
                        ? HColors.white
                        : HColors.grey,
                  ),
                ),
        ),
      );
    });
  }
}
