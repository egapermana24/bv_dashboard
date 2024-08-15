import 'package:flutter_bloc/flutter_bloc.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardLoading()) {
    on<LoadDashboardEvent>((event, emit) {
      emit(const DashboardLoaded(checkIn: 2, inHouse: 0, checkOut: 2));
    });
  }
}
