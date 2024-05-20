import 'package:checker/application/home/home_cubit.dart';
import 'package:checker/application/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => HomeCubit(),
     child: BlocListener<HomeCubit,HomeState>(listener: (_, state) {
       
     },
     child: Builder(builder: (context) {
       final cubit = context.read<HomeCubit>();

       return BlocBuilder<HomeCubit,HomeState>(builder: (_, state) => Scaffold(
        
       ));
     },),
     ),
    );
  }
}