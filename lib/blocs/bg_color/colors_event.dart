part of 'colors_bloc.dart';

sealed class BgColorEvent extends Equatable {
  const BgColorEvent();

  @override
  List<Object> get props => [];
}

class ChangeBgColor extends BgColorEvent {}
