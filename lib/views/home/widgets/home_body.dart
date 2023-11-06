part of '../index.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: size.width * 0.2);
    EdgeInsets.symmetric(horizontal: size.width * 0.2);
    final controller = CarouselController();

    final theme = Theme.of(context);

    return Column(
      children: [
        if (size.width < tablet)
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 30,
              right: 10,
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Icon(Icons.menu),
                    HText(
                      text: 'Menu',
                      style: theme.textTheme.bodyMedium?.copyWith(fontSize: 10),
                    ),
                  ],
                ),
                Image.asset(
                  HImages.logo,
                  width: size.width * 0.15,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        const Icon(Icons.shopping_cart, size: 30),
                        Positioned(
                          right: 2,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: HColors.red,
                              borderRadius: BorderRadius.circular(7.5),
                            ),
                            child: Center(
                              child: HText(
                                text: '0',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontSize: 10,
                                  color: HColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    HText(
                      text: 'Cart',
                      style: theme.textTheme.bodyMedium?.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        const VerticalSpace(20),
        SizedBox(
          height: size.height * 0.53,
          width: size.width,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: CarouselSlider(
              items: BannerModel.bannerSlider.map((slider) {
                return Material(
                  elevation: 10,
                  child: Image.asset(
                    slider.image,
                    width: size.width * 0.6,
                    fit: BoxFit.fitWidth,
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
              ),
            ),
          ),
        ),
        Column(
          children: [
            const VerticalSpace(20),
            HText(
              text: 'Buyback \n Some random texts was written '
                  '\n Your Device, Onto New Value',
              style: theme.textTheme.headlineMedium
                  ?.copyWith(fontSize: size.width * 0.03),
              align: TextAlign.center,
            ),
            const VerticalSpace(30),
            Padding(
              padding: padding,
              child: HText(
                text: 'With Apple in you can get a great value in exchange for '
                    'your current device and aapply it towards a purchase today.'
                    'And you can do it all online (iPhone) or at any Apple Store'
                    ' (iPhone, Mac notebooks, iPad and Apple Watch). If your'
                    ' device isn\'t eligible for credit, we\'ll you recycle it '
                    'for free. it\'s a win-win for you and the planet.',
                style: theme.textTheme.bodyMedium
                    ?.copyWith(fontSize: size.width * 0.0175),
                align: TextAlign.center,
              ),
            ),
            const VerticalSpace(30),
          ],
        ),
        Padding(
          padding: padding,
          child: Column(
            children: [
              HText(
                text: 'Product display header',
                style: theme.textTheme.headlineMedium
                    ?.copyWith(fontSize: size.width * 0.03),
              ),
              size.width > tablet
                  ? const FullScreenMarketDisplay()
                  : const MobileMarketDisplay(),
              const VerticalSpace(20),
            ],
          ),
        ),
        if (size.width > tablet)
          Padding(
            padding: padding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HText(
                  text: 'Contact us to make a purchase from our store',
                  style: theme.textTheme.headlineMedium
                      ?.copyWith(fontSize: size.width * 0.02),
                  align: TextAlign.center,
                ),
                const VerticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HTextFormField(
                      hintText: 'Enter an address here',
                      icon: const Icon(Icons.fire_truck_rounded),
                      width: size.width * 0.29,
                    ),
                    HTextFormField(
                      hintText: 'Enter full name',
                      icon: const Icon(Icons.adjust_rounded),
                      width: size.width * 0.29,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HTextFormField(
                      hintText: 'Enter payment information',
                      icon: const Icon(Icons.paypal_rounded),
                      width: size.width * 0.29,
                    ),
                    HTextFormField(
                      hintText: 'Enter your phone number',
                      icon: const Icon(Icons.phone_android),
                      width: size.width * 0.29,
                    ),
                  ],
                ),
              ],
            ),
          ),
        Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(30),
              HText(
                text: 'You can trade an iPhone or a samsung galaxy phone',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: size.width * 0.02,
                ),
              ),
              const VerticalSpace(20),
              size.width > tablet
                  ? Column(
                      children: [
                        Row(
                          children: [
                            Button(
                              onPressed: () {},
                              text: 'Trade in your iPhone',
                              backgroundColor: HColors.black,
                              color: HColors.white,
                            ),
                            const HorizonTapSpace(10),
                            Button(
                              onPressed: () {},
                              text: 'Trade in your samsung galaxy phone',
                              backgroundColor: HColors.black,
                              color: HColors.white,
                            ),
                          ],
                        ),
                      ],
                    )
                  : SizedBox(
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            onPressed: () {},
                            text: 'Trade in your iPhone',
                            backgroundColor: HColors.black,
                            color: HColors.white,
                          ),
                          Button(
                            onPressed: () {},
                            text: 'Trade in your samsung galaxy phone',
                            backgroundColor: HColors.black,
                            color: HColors.white,
                          ),
                        ],
                      ),
                    ),
              const VerticalSpace(50),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MarketRow(
                    title: 'What\'s Black Market Trade-in?',
                    description: 'An easy win for your wallet and the planet. '
                        'Sell your unwanted electronics to professional '
                        'refurbishers on Black Market - Just complete the '
                        'assessment and see the best offer for your device in as little as 2 minutes',
                    icon: HImages.market1,
                  ),
                  MarketRow(
                    title: 'How does Trade-in work?',
                    description: '1. Get an offer from a professional '
                        'refurbisher\n2. Ship your device for free\n'
                        '3. Get cash in your bank account',
                    icon: HImages.market2,
                    showIconRight: false,
                  ),
                  MarketRow(
                    title: 'What goes into an offer?',
                    description: 'Professional refurbishers make offers '
                        'based on your device\'s condition and its '
                        'current market value. if you don\'t get an offer '
                        'right away, you can always try again - Trade-in '
                        'offers depend on the market, so there\'s always round 2.',
                    icon: HImages.market3,
                  ),
                ],
              ),
            ],
          ),
        ),
        const VerticalSpace(30),
        BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
          return Padding(
            padding: padding,
            child: SizedBox(
              width: size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            BottomCarouselModel.bottomSlider.map((slider) {
                          return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              slider.id == state.index
                                  ? Icons.circle
                                  : Icons.circle_outlined,
                              size: 10,
                            ),
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ScrollButton(
                            icon: Icons.arrow_back_ios,
                            onTap: () {
                              context
                                  .read<HomeBloc>()
                                  .add(GoBackCarouselPage());
                              controller.animateToPage(state.index);
                            },
                          ),
                          ScrollButton(
                            icon: Icons.arrow_forward_ios,
                            onTap: () {
                              context
                                  .read<HomeBloc>()
                                  .add(GoForwardCarouselPage());
                              controller.animateToPage(state.index);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  const VerticalSpace(20),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CarouselSlider.builder(
                      carouselController: controller,
                      itemCount: BottomCarouselModel.bottomSlider.length,
                      itemBuilder: (_, index, int pageViewIndex) {
                        BottomCarouselModel slider =
                            BottomCarouselModel.bottomSlider[index];

                        return Material(
                          key: Key('${slider.id}'),
                          elevation: 0,
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: size.width * 0.6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HText(
                                  text: slider.title,
                                  style: theme.textTheme.headlineMedium,
                                ),
                                HText(
                                  text: slider.subtitle,
                                  style: theme.textTheme.headlineMedium
                                      ?.copyWith(color: HColors.blue),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        viewportFraction: 1,
                        initialPage: state.index,
                        onPageChanged: (index, reason) {
                          // context.read<HomeBloc>().add(GoForwardCarouselPage());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
        const VerticalSpace(50),
        Container(
          color: HColors.black,
          child: Padding(
            padding: padding,
            child: Column(
              children: [
                const VerticalSpace(30),
                size.width > tablet
                    ? const FullScreenMobileFooter()
                    : const MobileScreenFooter(),
                const VerticalSpace(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      HImages.logo,
                      width: size.width * 0.2,
                    ),
                    Row(
                      children: [
                        Icons.telegram,
                        Icons.facebook,
                        Icons.camera_alt,
                      ].map((icon) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(icon, color: HColors.white),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const VerticalSpace(20),
                const Divider(color: HColors.white),
                const VerticalSpace(20),
                size.width > tablet
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HText(
                            text: '2023 Sachi Tsusho International Co. Ltd.'
                                ' All Rights Reserved',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: HColors.white,
                              fontSize: 10,
                            ),
                          ),
                          HText(
                            text: 'This is a random footer text',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: HColors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          HText(
                            text: '2023 Sachi Tsusho International Co. Ltd.'
                                ' All Rights Reserved',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: HColors.white,
                              fontSize: 10,
                            ),
                          ),
                          const VerticalSpace(20),
                          HText(
                            text: 'This is a random footer text',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: HColors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                const VerticalSpace(30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
