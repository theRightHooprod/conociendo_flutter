import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigator_state.dart';

class NavigatorCubit extends Cubit<NavigatorMainState> {
  NavigatorCubit() : super(NavigatorInitial());

  void showDetail(){
    emit(NavigatorGoToDetailState());
  }
}
