part of 'colors_bloc.dart';

class BgColorState extends Equatable {
  final Color color;

  const BgColorState({required this.color,});

  @override
  List<Object> get props => [color];

  BgColorState copyWith({
    Color? color,
  }) {
    return BgColorState(
      color: color ?? this.color,
    );
  }

  factory BgColorState.initial() {
    return BgColorState(color: Colors.white,);
  }
}
