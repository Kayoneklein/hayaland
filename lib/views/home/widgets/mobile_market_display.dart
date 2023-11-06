part of '../index.dart';

class MobileMarketDisplay extends StatelessWidget {
  const MobileMarketDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
      return MouseRegion(
        onHover: (e) {
          context.read<HomeBloc>().add(UpdateHoverAction(iPhone14));
        },
        onExit: (e) {
          context.read<HomeBloc>().add(UpdateHoverAction(null));
        },
        child: Column(
          children: [
            SizedBox(
              width: size.width * 0.7,
              // height: size.height * 0.5,
              child: Card(
                elevation: 10,
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
                        top: size.height * 0.05,
                        bottom: size.height * 0.05,
                      ),
                      child: Image.asset(
                        HImages.display1,
                        // height: size.height * 0.4,
                        width: size.width * 0.35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallDisplayCard(
                        imageName: HImages.display2,
                        deviceName: iPad,
                        width: size.width * 0.27,
                        // height: size.height * 0.28,
                      ),
                      SmallDisplayCard(
                        imageName: HImages.display3,
                        deviceName: iWatch,
                        width: size.width * 0.27,
                        // height: size.height * 0.28,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallDisplayCard(
                        imageName: HImages.display4,
                        deviceName: macbook,
                        width: size.width * 0.27,
                      ),
                      SmallDisplayCard(
                        imageName: HImages.display5,
                        deviceName: airPod,
                        width: size.width * 0.27,
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
