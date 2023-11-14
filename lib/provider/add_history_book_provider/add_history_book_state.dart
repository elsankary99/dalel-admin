part of 'add_history_book_provider.dart';

abstract class AddHistoryBookState {
  const AddHistoryBookState();
}

class AddHistoryBookInitial extends AddHistoryBookState {}

class AddHistoryBookLoading extends AddHistoryBookState {}

class AddHistoryBookSuccess extends AddHistoryBookState {}

class AddHistoryBookError extends AddHistoryBookState {
  final String message;
  const AddHistoryBookError(this.message);
}
