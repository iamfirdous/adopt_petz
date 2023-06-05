part of 'history_bloc.dart';

@immutable
sealed class HistoryState {
  const HistoryState([this.adoptedPets = const [], this.adoptedIds]);
  final List<Pet> adoptedPets;
  final List<String>? adoptedIds;
}

class HistoryInitial extends HistoryState {}

class HistoryLoaded extends HistoryState {
  const HistoryLoaded(super.adoptedPets, super.adoptedIds);
}
