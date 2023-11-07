import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:test_task/utils/functions/generate_random_color.dart';

part 'bg_color_event.dart';
part 'bg_color_state.dart';

/// Bloc (logic) part 
class BgColorBloc extends Bloc<BgColorEvent, BgColorState> {
  /// Handle events and emit state
  BgColorBloc() : super(BgColorState.initial()) {
    on<ChangeBgColor>((event, emit) {
      emit(
        state.copyWith(
          color: generateRandomColor(),
        ),
      );
    });
  }
}
