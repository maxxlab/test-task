part of 'bg_color_bloc.dart';

/// Abstract Background Color Event
sealed class BgColorEvent extends Equatable {
   
   @override
  List<Object> get props => [];

  const BgColorEvent(); 
}

/// Event for changing a color
class ChangeBgColor extends BgColorEvent {}
