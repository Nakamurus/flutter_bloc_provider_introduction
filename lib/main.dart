import 'package:bloc_provider_instruction/pages/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'blocs/counter_bloc.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}