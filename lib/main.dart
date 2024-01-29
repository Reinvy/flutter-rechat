import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rechat/features/explore/presentation/bloc/explore_bloc.dart';
import 'package:rechat/main_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ExploreBloc(),
        )
      ],
      child: MaterialApp(
        title: 'ReChat',
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const MainNavigation(),
      ),
    );
  }
}
