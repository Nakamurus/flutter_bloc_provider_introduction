import 'package:bloc_provider_instruction/blocs/counter_bloc.dart';
import 'package:bloc_provider_instruction/widgets/decrement.dart';
import 'package:bloc_provider_instruction/widgets/increment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 62.0),
              ),
              IncrementButton(),
              DecrementButton(),
            ],
          ),
        ),
      )
    );
  }
}