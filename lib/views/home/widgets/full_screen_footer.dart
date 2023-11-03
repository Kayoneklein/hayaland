part of '../index.dart';

class FullScreenMobileFooter extends StatelessWidget {
  const FullScreenMobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            FooterLinks(
              header: 1,
              showLinks: false,
              links: [
                'Link 2',
                'Link 3',
                'Link 3',
                'Link 4',
                'Link 5',
                'Link 6'
              ],
            ),
            FooterLinks(
              header: 2,
              showLinks: false,
              links: [
                'Link 7',
                'Link 8',
                'Link 9',
                'Link 10',
                'Link 11',
                'Link 12'
              ],
            ),
            FooterLinks(
              header: 3,
              showLinks: false,
              links: [
                'Link 13',
                'Link 14',
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HText(
              text: 'Contact us here for more info',
              style: HTextStyles.h2(fontSize: 16, color: HColors.white),
            ),
            const VerticalSpace(20),
            Row(
              children: [
                HTextFormField(
                  width: size.width * 0.18,
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
        )
      ],
    );
  }
}
