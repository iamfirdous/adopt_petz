import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:flutter/material.dart';

enum Filter { all, dog, cat }

class SpeciesFilter extends StatelessWidget {
  const SpeciesFilter({super.key, required this.species, required this.onChange});

  final Filter? species;
  final void Function(Filter?) onChange;

  @override
  Widget build(BuildContext context) {
    final isAll = species == Filter.all;
    final isDog = species == Filter.dog;
    final isCat = species == Filter.cat;
    return Row(
      children: [
        FilterItem(label: Texts.all, isSelected: isAll, onTap: () => onChange(Filter.all)),
        const SizedBox(width: 16.0),
        FilterItem(label: Texts.dogs, isSelected: isDog, onTap: () => onChange(Filter.dog)),
        const SizedBox(width: 16.0),
        FilterItem(label: Texts.cats, isSelected: isCat, onTap: () => onChange(Filter.cat)),
      ],
    );
  }
}

class FilterItem extends StatelessWidget {
  const FilterItem({super.key, required this.label, required this.isSelected, this.onTap});

  final String label;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final textColor = isSelected ? AppColors.darkForeground : context.colorPrimary;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? context.colorPrimary : context.colorCard,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: context.colorPrimary),
          ),
          child: Text(label, style: context.bodyMedium?.copyWith(color: textColor)),
        ),
      ),
    );
  }
}
