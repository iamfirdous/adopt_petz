import 'package:adopt_petz/blocs/history/history_bloc.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:adopt_petz/views/widgets/pets_list_view.dart';
import 'package:adopt_petz/views/widgets/svg.dart';
import 'package:adopt_petz/views/widgets/theme_toggler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late final HistoryBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<HistoryBloc>(context)..add(const FetchAdoptedPets());
    super.initState();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 48.0),
                Row(
                  children: [
                    Text(Texts.history, style: context.headlineLarge),
                    const SizedBox(width: 16.0),
                    Svg(asset: Images.history, color: context.colorText),
                    const Spacer(),
                    const ThemeToggler(),
                  ],
                ),
                const SizedBox(height: 4.0),
                Text(Texts.pets_adopted, style: context.bodyLarge),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<HistoryBloc, HistoryState>(
              builder: (_, state)  {
                if (state.adoptedPets.isEmpty) {
                  return Center(child: Text(Texts.no_pets_adopted, style: context.bodyLarge));
                }
                return PetsListView(pets: state.adoptedPets, adoptedIds: state.adoptedIds);
              },
            ),
          ),
        ],
      ),
    );
  }
}