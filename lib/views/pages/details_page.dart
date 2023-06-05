import 'package:adopt_petz/blocs/details/details_bloc.dart';
import 'package:adopt_petz/models/pet.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:adopt_petz/views/widgets/pets_list_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:confetti/confetti.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.pet});

  static Route route(Pet pet) => MaterialPageRoute(
    builder: (context) => BlocProvider.value(
      value: BlocProvider.of<DetailsBloc>(context)..add(FetchAdoptState(pet)),
      child: DetailsPage(pet: pet),
    ),
  );

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colorCard,
        body: Container(
          alignment: Alignment.center,
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            color: context.colorBG,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    showImageViewer(
                      context,
                      CachedNetworkImageProvider(pet.image),
                      backgroundColor: context.colorBG,
                      closeButtonColor: context.colorText,
                      immersive: false,
                      doubleTapZoomable: true,
                    );
                  },
                  child: Stack(
                    children: [ 
                      PetImage(pet: pet, isBig: true),
                      Container(
                        width: double.infinity,
                        height: 112.0,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black, Colors.transparent],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Text(
                          '${Texts.meet} ${pet.name} ${pet.species.emoji}',
                          style: context.headlineLarge?.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: context.colorCard,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                    boxShadow: boxshadow,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Texts.adopt_me, style: context.displayMedium),
                      Text(
                        '₹ ${pet.price}',
                        style: context.titleMedium?.copyWith(color: context.colorPrimary),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelValue(label: Texts.breed, value: pet.breed),
                        const SizedBox(height: 16.0),
                        LabelValue(label: Texts.age, value: '${pet.age} year${pet.age > 1 ? 's' : ''}'),
                        const SizedBox(height: 16.0),
                        LabelValue(label: Texts.gender, value: pet.gender.displayName),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BlocConsumer<DetailsBloc, DetailsState>(
                    listener: showCongratsDialog,
                    builder: (context, state) {
                      final adopted = state is DetailsLoaded && state.alreadyAdopted;
                      final button1 = adopted ? Texts.adopted : Texts.adopt;
                      final button2 = adopted ? Texts.go_back : Texts.cancel;
                      return Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: context.colorCard,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: context.colorPrimary),
                                ),
                                child: Center(child: Text(button2, style: context.button2)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: InkWell(
                              onTap: adopted ? null : () => BlocProvider.of<DetailsBloc>(context).add(AdoptPet(pet)),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: adopted ? context.colorDisabled : context.colorPrimary,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Center(child: Text(button1, style: context.button1)),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showCongratsDialog(BuildContext context, DetailsState state) {
    if (state is PetAdopted) {
      showDialog(
        context: context,
        builder: (context) {
          final congratsText = '${Texts.congrats} ${pet.name}';
          return AlertDialog(
            contentPadding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConfettiWidget(
                  confettiController: ConfettiController(duration: const Duration(seconds: 3))..play(),
                  blastDirectionality: BlastDirectionality.explosive,
                ),
                Text(congratsText, style: context.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: 24.0),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: context.colorPrimary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Text(Texts.okay, style: context.button1)),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }
}

class LabelValue extends StatelessWidget {
  const LabelValue({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.displayMedium?.copyWith(color: context.colorPrimary)),
        const SizedBox(height: 4.0),
        Text(value, style: context.displayMedium),
      ],
    );
  }
}
