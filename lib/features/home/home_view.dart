import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/blocs/bg_color/bg_color_bloc.dart';
import 'package:test_task/features/home/home_model.dart';
import 'package:test_task/utils/constants/constants.dart';

/// View part of Home
class HomeView extends StatelessWidget {
   /// HomeView constructor
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BgColorBloc(),
      child: Builder(
        builder: (context) {
          final colorBloc = BlocProvider.of<BgColorBloc>(context);
          final model = HomeModel(title: 'Hello there');

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Test Task',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            body: BlocBuilder<BgColorBloc, BgColorState>(
              bloc: colorBloc,
              builder: (context, state) {
                return InkWell(
                  onTap: () {
                    colorBloc.add(
                      ChangeBgColor(),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: state.color,
                    child: Center(
                      child: Text(
                        model.title,
                        style: TextStyle(
                          color: state.color.withAlpha(limit) == Colors.white
                              ? Colors.black
                              : state.color.withAlpha(limit),
                          fontSize: textTitleFontSize,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
