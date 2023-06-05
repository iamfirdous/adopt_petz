import 'package:adopt_petz/blocs/pets/pets_bloc.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:adopt_petz/views/widgets/pets_list_view.dart';
import 'package:adopt_petz/views/widgets/search_field.dart';
import 'package:adopt_petz/views/widgets/species_filter.dart';
import 'package:adopt_petz/views/widgets/svg.dart';
import 'package:adopt_petz/views/widgets/theme_toggler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PetsBloc bloc;
  final scrollController = ScrollController();
  final searchController = TextEditingController();
  bool fetchingMore = false;

  @override
  void initState() {
    bloc = BlocProvider.of<PetsBloc>(context)..add(const FetchPets());
    scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    final position = scrollController.position;
    if (position.atEdge && position.pixels != 0 && !fetchingMore) {
      fetchingMore = true;
      bloc.add(const FetchPets(more: true));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 48.0),
                Row(
                  children: [
                    Text(Texts.home, style: context.headlineLarge),
                    const SizedBox(width: 16.0),
                    Svg(asset: Images.home, color: context.colorText),
                    const Spacer(),
                    const ThemeToggler(),
                  ],
                ),
                const SizedBox(height: 16.0),
                SeachField(
                  controller: searchController,
                  onChanged: (search) => bloc.add(FetchPets(search: search)),
                ),
                const SizedBox(height: 16.0),
                BlocBuilder<PetsBloc, PetsState>(
                  builder: (_, state) => Column(
                    children: [
                      SpeciesFilter(
                        species: state.filter,
                        onChange: (species) {
                          searchController.clear();
                          bloc.add(FetchPets(filter: species, search: ''));
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<PetsBloc, PetsState>(
              builder: (_, state) {
                if (state is PetsLoaded) {
                  fetchingMore = false;
                }
                return switch (state) {
                  PetsLoading(:final pets) when pets.isEmpty => Center(child: CircularProgressIndicator(color: context.colorPrimary)),
                  PetsLoaded(:final pets) when pets.isEmpty => Center(child: Text(Texts.no_pets, style: context.bodyLarge)),
                  PetsLoaded(:final pets, :final adoptedIds) || PetsLoading(:final pets, :final adoptedIds) => PetsListView(
                      scrollController: scrollController,
                      pets: pets,
                      adoptedIds: adoptedIds,
                      isLoading: state is PetsLoading,
                    ),
                  _ => const SizedBox(),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}
