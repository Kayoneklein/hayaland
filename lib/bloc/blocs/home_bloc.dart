import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hayaland/views/home/index.dart';

part '../events/home_events.dart';
part '../states/home_states.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(index: 0)) {
    on<UpdateHoverAction>(_updateHoverAction);
    on<GoBackCarouselPage>(_goBack);
    on<GoForwardCarouselPage>(_goForward);
    on<ChangeCarouselPage>(_changePage);
  }

  void _updateHoverAction(UpdateHoverAction event, Emitter<HomeState> emit) {
    if (event.navItem == null) {
      emit(state.removeProperty(removeHover: true));
    } else {
      emit(state.copyWith(hoveredNavItem: event.navItem));
    }
  }

  void _goBack(GoBackCarouselPage event, Emitter<HomeState> emit) {
    int page = state.index - 1;
    if (page < 0) {
      page = BottomCarouselModel.bottomSlider.length - 1;
    }
    emit(state.copyWith(index: page));
  }

  void _goForward(GoForwardCarouselPage event, Emitter<HomeState> emit) {
    int page = state.index + 1;
    if (page > BottomCarouselModel.bottomSlider.length - 1) {
      page = 0;
    }
    emit(state.copyWith(index: page));
  }

  void _changePage(ChangeCarouselPage event, Emitter<HomeState> emit) {
    emit(state.copyWith(index: event.index));
  }
}
