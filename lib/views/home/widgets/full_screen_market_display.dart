part of '../index.dart';

class FullScreenMarketDisplay extends StatelessWidget {
  const FullScreenMarketDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
      return SizedBox(
        height: size.height * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MouseRegion(
              onHover: (e) {
                context.read<HomeBloc>().add(UpdateHoverAction(iPhone14));
              },
              onExit: (e) {
                context.read<HomeBloc>().add(UpdateHoverAction(null));
              },
              child: Card(
                elevation: state.hoveredNavItem == iPhone14 ? 200 : 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const VerticalSpace(20),
                    HText(
                      text: iPhone14,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.15,
                        bottom: size.height * 0.1,
                      ),
                      child: Image.asset(
                        HImages.display1,
                        height: size.height * 0.26,
                        width: size.width * 0.23,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SmallDisplayCard(
                        imageName: HImages.display2,
                        deviceName: iPad,
                      ),
                      SmallDisplayCard(
                        imageName: HImages.display3,
                        deviceName: iWatch,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SmallDisplayCard(
                        imageName: HImages.display4,
                        deviceName: macbook,
                      ),
                      SmallDisplayCard(
                        imageName: HImages.display5,
                        deviceName: airPod,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
