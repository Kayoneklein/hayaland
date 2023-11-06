part of '../index.dart';

class MobileScreenFooter extends StatefulWidget {
  const MobileScreenFooter({Key? key}) : super(key: key);

  @override
  State<MobileScreenFooter> createState() => _MobileScreenFooterState();
}

class _MobileScreenFooterState extends State<MobileScreenFooter> {
  bool showLink1 = false;
  bool showLink2 = false;
  bool showLink3 = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HText(
              text: 'Contact us here for more info',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontSize: 16,
                color: HColors.white,
              ),
            ),
            const VerticalSpace(20),
            Row(
              children: [
                HTextFormField(
                  width: size.width * 0.4,
                  hintText: 'Write you message',
                  filled: true,
                  fillColor: HColors.white,
                ),
                const HorizonTapSpace(10),
                Button(
                  onPressed: () {},
                  text: 'Send',
                  backgroundColor: HColors.white,
                  color: HColors.black,
                  size: const Size(100, 50),
                  borderRadius: 5,
                ),
              ],
            )
          ],
        ),
        const Divider(color: HColors.white),
        FooterLinks(
          header: 1,
          links: const [
            'Link 2',
            'Link 3',
            'Link 3',
            'Link 4',
            'Link 5',
            'Link 6'
          ],
          showLinks: showLink1,
          onTap: () {
            setState(() {
              showLink1 = !showLink1;
            });
          },
        ),
        const Divider(color: HColors.white),
        FooterLinks(
          header: 2,
          links: const [
            'Link 7',
            'Link 8',
            'Link 9',
            'Link 10',
            'Link 11',
            'Link 12'
          ],
          showLinks: showLink2,
          onTap: () {
            setState(() {
              showLink2 = !showLink2;
            });
          },
        ),
        const Divider(color: HColors.white),
        FooterLinks(
          header: 3,
          links: const [
            'Link 13',
            'Link 14',
          ],
          showLinks: showLink3,
          onTap: () {
            setState(() {
              showLink3 = !showLink3;
            });
          },
        ),
        const Divider(color: HColors.white),
      ],
    );
  }
}
