part of 'bg_color_bloc.dart';

/// Color State
class BgColorState extends Equatable {
  /// Background color
  final Color color;

  ///
  @override
  List<Object> get props => [color];

  /// Background color constructor
  const BgColorState({
    required this.color,
  });

  /// Initial state of the color
  factory BgColorState.initial() {
    return const BgColorState(
      color: Colors.white,
    );
  }

  /// Change the copy of state
  BgColorState copyWith({
    Color? color,
  }) {
    return BgColorState(
      color: color ?? this.color,
    );
  }
}
