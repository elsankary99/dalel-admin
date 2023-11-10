part of 'periods_provider.dart';

abstract class PeriodsState {
  const PeriodsState();
}

class PeriodsInitial extends PeriodsState {}

//? Add Periods
class AddPeriodsLoading extends PeriodsState {}

class AddPeriodsSuccess extends PeriodsState {}

class AddPeriodsError extends PeriodsState {
  final String message;
  const AddPeriodsError(this.message);
}
