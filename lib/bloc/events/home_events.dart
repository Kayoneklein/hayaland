part of '../blocs/home_bloc.dart';

class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class UpdateHoverAction extends HomeEvent {
  final String? navItem;

  UpdateHoverAction(this.navItem);

  @override
  List<Object?> get props => [navItem];
}

class GoBackCarouselPage extends HomeEvent {}

class GoForwardCarouselPage extends HomeEvent {}

class ChangeCarouselPage extends HomeEvent {
  final int index;

  ChangeCarouselPage(this.index);

  @override
  List<Object?> get props => [index];
}
