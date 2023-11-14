part of 'add_historucal_souvenir_provider.dart';

abstract class AddHistoricalSouvenirState {
  const AddHistoricalSouvenirState();
}

class AddHistoricalSouvenirInitial extends AddHistoricalSouvenirState {}

class AddHistoricalSouvenirLoading extends AddHistoricalSouvenirState {}

class AddHistoricalSouvenirSuccess extends AddHistoricalSouvenirState {}

class AddHistoricalSouvenirError extends AddHistoricalSouvenirState {
  final String message;
  const AddHistoricalSouvenirError(this.message);
}
