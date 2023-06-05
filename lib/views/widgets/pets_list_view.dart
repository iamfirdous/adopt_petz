import 'package:adopt_petz/models/pet.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:adopt_petz/views/pages/details_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PetsListView extends StatelessWidget {
  const   PetsListView({
    super.key,
    this.scrollController,
    required this.pets,
    required this.adoptedIds,
    this.isLoading = false,
  });

  final ScrollController? scrollController;
  final List<Pet> pets;
  final List<String>? adoptedIds;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final loadingPlaceholder = Container(
      decoration: BoxDecoration(
        color: context.colorHint,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );

    return GridView.builder(
      controller: scrollController,
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 64.0),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        mainAxisExtent: 230.0,
      ),
      itemCount: pets.length + (isLoading ? 2 : 0),
      itemBuilder: (_, i) => i < pets.length
          ? PetCard(pet: pets[i], adopted: adoptedIds?.contains(pets[i].id) ?? false)
          : loadingPlaceholder,
    );
  }
}

class PetCard extends StatefulWidget {
  const PetCard({super.key, required this.pet, required this.adopted});

  final Pet pet;
  final bool adopted;

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  bool adopted = false;

  @override
  void initState() {
    adopted = widget.adopted;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(8.0);
    final titleStyle = context.titleSmall?.copyWith(color: context.colorText);
    final bodyStyle = context.bodyMedium?.copyWith(color: context.colorText);
    return InkWell(
      onTap: () async {
        await Navigator.push(context, DetailsPage.route(widget.pet));
        final adoptedIds = (await SharedPreferences.getInstance()).getStringList(PrefKeys.adopted_ids);
        setState(() => adopted = adoptedIds?.contains(widget.pet.id) ?? adopted);
      },
      child: Container(
        decoration: BoxDecoration(color: context.colorCard, borderRadius: radius, boxShadow: boxshadow),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PetImage(pet: widget.pet),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.pet.name, style: titleStyle),
                      Text('₹ ${widget.pet.price}', style: titleStyle),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${Texts.age} - ${widget.pet.age}', style: bodyStyle),
                          const SizedBox(height: 2.0),
                          Text(widget.pet.breed, style: bodyStyle),
                        ],
                      ),
                      if (adopted) ...[
                        const Spacer(),
                        Icon(Icons.check_circle_rounded, color: context.colorPrimary, size: 16.0),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PetImage extends StatelessWidget {
  const PetImage({super.key, required this.pet, this.isBig = false});

  final Pet pet;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    final height = isBig ? 378.0 : 142.0;
    final radius = BorderRadius.circular(isBig ? 0.0 : 8.0);
    return Hero(
      tag: pet.id,
      child: CachedNetworkImage(
        imageUrl: pet.image,
        placeholder: (_, url) => Container(
          height: height,
          decoration: BoxDecoration(color: context.colorHint, borderRadius: radius),
          child: Center(
            child: Text(
              pet.species.emoji,
              style: TextStyle(fontSize: isBig ? 128.0 : 64.0),
            ),
          ),
        ),
        imageBuilder: (context, image) => Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: radius,
            image: DecorationImage(image: image, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
