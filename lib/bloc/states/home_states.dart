part of '../blocs/home_bloc.dart';

class HomeState extends Equatable {
  final String? hoveredNavItem;
  final int index;

  const HomeState({this.hoveredNavItem, required this.index});

  @override
  List<Object?> get props => [hoveredNavItem, index];

  HomeState copyWith({String? hoveredNavItem, int? index}) {
    return HomeState(
      hoveredNavItem: hoveredNavItem ?? this.hoveredNavItem,
      index: index ?? this.index,
    );
  }

  HomeState removeProperty({bool removeHover = false}) {
    return HomeState(
      hoveredNavItem: removeHover ? null : hoveredNavItem,
      index: index,
    );
  }
}
