part of 'details_bloc.dart';

@immutable
sealed class DetailsState {
  const DetailsState();
}

class DetailsInitial extends DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsLoaded extends DetailsState {
  const DetailsLoaded(this.alreadyAdopted);
  final bool alreadyAdopted;
}

class PetAdopted extends DetailsState {}
