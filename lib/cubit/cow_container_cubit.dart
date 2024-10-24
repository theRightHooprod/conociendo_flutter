import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cow_container_state.dart';

class CowContainerCubit extends Cubit<CowContainerState> {
  CowContainerCubit() : super(CowContainerInitial());

  void showDetail(){
    emit(CowContainerShowDetailViewActionState());
  }
}
