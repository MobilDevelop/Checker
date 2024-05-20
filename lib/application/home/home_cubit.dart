import 'package:bloc/bloc.dart';
import 'package:checker/application/home/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeInitial());
}