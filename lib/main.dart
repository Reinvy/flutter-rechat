import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rechat/main_navigation.dart';

import 'features/explore/presentation/bloc/home_bloc.dart';

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
          create: (context) => HomeBloc(),
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
