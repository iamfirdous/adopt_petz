part of 'pets_bloc.dart';

@immutable
sealed class PetsState {
  const PetsState([this.pets = const [], this.filter, this.adoptedIds]);
  final Filter? filter;
  final List<Pet> pets;
  final List<String>? adoptedIds;
}

class PetsInitial extends PetsState {}

class PetsLoading extends PetsState {
  const PetsLoading(super.pets, super.filter, super.adoptedIds);
}

class PetsLoaded extends PetsState {
  const PetsLoaded(super.pets, super.filter, super.adoptedIds);
}