part of 'pets_bloc.dart';

@immutable
sealed class PetsEvent {
  const PetsEvent();
}

class FetchPets extends PetsEvent {
  const FetchPets({this.search, this.filter, this.more = false});
  final String? search;
  final Filter? filter;
  final bool more;
}
