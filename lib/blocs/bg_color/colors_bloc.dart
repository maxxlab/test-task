import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:test_task/utils/functions/generate_random_color.dart';

part 'colors_event.dart';
part 'colors_state.dart';

class BgColorBloc extends Bloc<BgColorEvent, BgColorState> {
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
