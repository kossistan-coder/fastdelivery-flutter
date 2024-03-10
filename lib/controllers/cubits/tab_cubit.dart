import 'package:bloc/bloc.dart';
import 'package:fastdelivery/controllers/cubits/tab_state.dart';

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(TabState(index: 0));

  void setTabIndex(int index) => emit(
        TabState(index: index),
      );
}
