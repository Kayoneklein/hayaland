part of '../index.dart';

class SmallDisplayCard extends StatelessWidget {
  final String deviceName;
  final String imageName;
  final double? height;
  final double? width;
  const SmallDisplayCard({
    Key? key,
    required this.deviceName,
    required this.imageName,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
      return MouseRegion(
        onExit: (PointerExitEvent hovered) {
          context.read<HomeBloc>().add(UpdateHoverAction(null));
        },
        onHover: (PointerHoverEvent hovered) {
          context.read<HomeBloc>().add(UpdateHoverAction(deviceName));
        },
        child: Card(
          elevation: state.hoveredNavItem == deviceName ? 200 : 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const VerticalSpace(20),
              HText(
                text: deviceName,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    bottom: size.height * 0.03,
                  ),
                  child: Image.asset(
                    imageName,
                    height: height ?? size.height * 0.15,
                    width: width ?? size.width * 0.168,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
