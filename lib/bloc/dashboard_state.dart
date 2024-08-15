import 'package:equatable/equatable.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

class DashboardLoading extends DashboardState {}

class DashboardLoaded extends DashboardState {
  final int checkIn;
  final int inHouse;
  final int checkOut;

  const DashboardLoaded({
    required this.checkIn,
    required this.inHouse,
    required this.checkOut,
  });

  @override
  List<Object> get props => [checkIn, inHouse, checkOut];
}
