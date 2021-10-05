import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'errors_state.dart';

class ErrorsCubit extends Cubit<ErrorsState> {
  ErrorsCubit() : super(ErrorsInitial());
}
