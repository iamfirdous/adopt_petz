import 'package:adopt_petz/models/pet.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(DetailsInitial()) {
    on<FetchAdoptState>(onFetchAdoptState);
    on<AdoptPet>(onAdoptPet);
  }

  Future<void> onFetchAdoptState(FetchAdoptState event, Emitter<DetailsState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final adoptedIds = prefs.getStringList(PrefKeys.adopted_ids);
    emit(DetailsLoaded(adoptedIds?.any((petId) => petId == event.pet.id) ?? false));
  }

  Future<void> onAdoptPet(AdoptPet event, Emitter<DetailsState> emit) async {
    // emit(DetailsLoading());

    // // Delay to simulate a network call
    // await Future.delayed(const Duration(milliseconds: 1200));

    final prefs = await SharedPreferences.getInstance();
    var adoptedIds = prefs.getStringList(PrefKeys.adopted_ids);
    if (adoptedIds == null) {
      adoptedIds = [event.pet.id];
    } else {
      adoptedIds.add(event.pet.id);
    }
    await prefs.setStringList(PrefKeys.adopted_ids, adoptedIds);
    emit(PetAdopted());
    emit(const DetailsLoaded(true));
  }
}