part of 'details_bloc.dart';

@immutable
sealed class DetailsEvent {
  const DetailsEvent();
}

class FetchAdoptState extends DetailsEvent {
  const FetchAdoptState(this.pet);
  final Pet pet;
}

class AdoptPet extends DetailsEvent {
  const AdoptPet(this.pet);
  final Pet pet;
}
