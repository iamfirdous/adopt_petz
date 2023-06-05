import 'package:adopt_petz/models/pet.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitial()) {
    on<FetchAdoptedPets>(onFetchAdoptedPets);
  }

  Future<void> onFetchAdoptedPets(FetchAdoptedPets event, Emitter<HistoryState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final adoptedIds = prefs.getStringList(PrefKeys.adopted_ids);

    final adopted = allPetsData.where((pet) => adoptedIds?.contains(pet.id) ?? false).toList();
    emit(HistoryLoaded(adopted, adoptedIds));
  }
}