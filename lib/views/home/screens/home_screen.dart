part of '../index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: size.width * 0.2);
    final controller = CarouselController();

    return LayoutBuilder(
      builder: (BuildContext ctx, BoxConstraints constraints) {
        // constraints.
        return const Scaffold(
          backgroundColor: HColors.white,
          body: ScrollComponent(),
        );
      },
    );
  }
}
