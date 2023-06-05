import 'package:adopt_petz/models/pet.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/views/widgets/species_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'pets_event.dart';
part 'pets_state.dart';

class PetsBloc extends Bloc<PetsEvent, PetsState> {
  PetsBloc() : super(PetsInitial()) {
    on<FetchPets>(onFetchPets);
  }

  List<Pet> filteredPets = [];
  List<Pet> loadedPets = [];
  int page = 0;
  Filter filter = Filter.all;
  String search = '';

  Future<void> onFetchPets(FetchPets event, Emitter<PetsState> emit) async {
    final isSearch = event.search != null && search != event.search;
    search = event.search ?? search;
    filter = event.filter ?? filter;
    filterPets();
    if (!event.more) {
      loadedPets = [];
    }

    final prefs = await SharedPreferences.getInstance();
    final adoptedIds = prefs.getStringList(PrefKeys.adopted_ids);

    if (event.more && loadedPets.length >= filteredPets.length) {
      emit(PetsLoaded(loadedPets, filter, adoptedIds));
      return;
    }

    if (!isSearch) {
      emit(PetsLoading(loadedPets, filter, adoptedIds));

      // Delay to simulate a network call
      await Future.delayed(const Duration(milliseconds: 1200));
    }

    final fetchedLength = loadedPets.length;
    loadedPets.addAll(
      (filteredPets.length - fetchedLength) < 10
          ? filteredPets.sublist(fetchedLength, filteredPets.length)
          : filteredPets.sublist(fetchedLength, fetchedLength + 10),
    );

    emit(PetsLoaded(loadedPets, filter, adoptedIds));
  }

  void filterPets() {
    filteredPets = switch (filter) {
      Filter.all => allPetsData,
      Filter.dog => allPetsData.where((pet) => pet.species == Species.dog).toList(),
      Filter.cat => allPetsData.where((pet) => pet.species == Species.cat).toList(),
    };
    if (search.isNotEmpty) {
      final search = this.search.toLowerCase();
      filteredPets = filteredPets.where((pet) => pet.name.toLowerCase().contains(search) || pet.breed.toLowerCase().contains(search)).toList();
    }
  }
}