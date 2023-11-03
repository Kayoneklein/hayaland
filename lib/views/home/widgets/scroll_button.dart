part of '../index.dart';

class ScrollButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  const ScrollButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              icon,
              weight: 2.0,
              color: HColors.black,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
