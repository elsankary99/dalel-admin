part of 'add_war_provider.dart';

abstract class AddWarState {
  const AddWarState();
}

class AddWarInitial extends AddWarState {}

class AddWarLoading extends AddWarState {}

class AddWarSuccess extends AddWarState {}

class AddWarError extends AddWarState {
  final String message;
  const AddWarError(this.message);
}
