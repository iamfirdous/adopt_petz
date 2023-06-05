part of 'history_bloc.dart';

@immutable
sealed class HistoryEvent {
  const HistoryEvent();
}

class FetchAdoptedPets extends HistoryEvent {
  const FetchAdoptedPets();
}
