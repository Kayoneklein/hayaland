part of '../index.dart';

class BannerModel {
  final String image;
  const BannerModel({required this.image});

  static const List<BannerModel> bannerSlider = [
    BannerModel(image: HImages.slider1),
    BannerModel(image: HImages.slider2),
  ];
}

class BottomCarouselModel {
  final String title;
  final String subtitle;
  final int id;

  const BottomCarouselModel({
    required this.title,
    required this.subtitle,
    required this.id,
  });

  static const List<BottomCarouselModel> bottomSlider = [
    BottomCarouselModel(
        title: 'First title', subtitle: 'First sub title', id: 0),
    BottomCarouselModel(
        title: 'Second title', subtitle: 'Second sub title', id: 1),
    BottomCarouselModel(
        title: 'Third title', subtitle: 'Third sub title', id: 2),
    BottomCarouselModel(
        title: 'Fourth title', subtitle: 'Fourth sub title', id: 3),
    BottomCarouselModel(
        title: 'Fifth title', subtitle: 'Fifth sub title', id: 4),
    BottomCarouselModel(
        title: 'Sixth title', subtitle: 'Sixth sub title', id: 5),
    BottomCarouselModel(
        title: 'Seventh title', subtitle: 'Seventh sub title', id: 6),
    BottomCarouselModel(
        title: 'Eighth title', subtitle: 'Eighth sub title', id: 7),
    BottomCarouselModel(
        title: 'Ninth title', subtitle: 'Ninth sub title', id: 8),
    BottomCarouselModel(
        title: 'Tenth title', subtitle: 'Tenth sub title', id: 9),
    BottomCarouselModel(
        title: 'Eleventh title', subtitle: 'Eleventh sub title', id: 10),
    BottomCarouselModel(
        title: 'Twelfth title', subtitle: 'Twelfth sub title', id: 11),
    BottomCarouselModel(
        title: 'Thirteenth title', subtitle: 'Thirteenth sub title', id: 12),
  ];
}
