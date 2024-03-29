import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/blocs/bg_color/bg_color_bloc.dart';
import 'package:test_task/features/home/home_view.dart';
import 'package:test_task/utils/theme/color_schemes.g.dart';
import 'package:test_task/utils/theme/custom_color.g.dart';

/// An app 
class MyApp extends StatelessWidget {

  /// Constructor of the app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BgColorBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          extensions: [lightCustomColors],
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          extensions: [darkCustomColors],
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
