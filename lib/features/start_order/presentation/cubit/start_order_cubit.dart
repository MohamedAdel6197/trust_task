import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'start_order_state.dart';

class StartOrderCubit extends Cubit<StartOrderState> {
  StartOrderCubit() : super(StartOrderInitial());
}
