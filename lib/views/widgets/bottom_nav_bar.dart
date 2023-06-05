
import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:adopt_petz/views/pages/history_page.dart';
import 'package:adopt_petz/views/pages/home_page.dart';
import 'package:adopt_petz/views/widgets/svg.dart';
import 'package:flutter/material.dart';

enum Nav { home, history }

extension BottomNavExt on Nav {
  String get title => switch (this) { Nav.home => Texts.home, Nav.history => Texts.history };
  String get icon => switch (this) { Nav.home => Images.home, Nav.history => Images.history };
  Widget get body => switch (this) { Nav.home => const HomePage(), Nav.history => const HistoryPage() };
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.selectedNav, required this.onChange});

  final Nav selectedNav;
  final void Function(Nav nav) onChange;

  @override
  Widget build(BuildContext context) {
    Color color(Nav nav) => nav == selectedNav ? context.colorSelected : context.colorHint;
    const radius = Radius.circular(12.0);
    const borderRadius = BorderRadius.only(topLeft: radius, topRight: radius);
    return Container(
      width: double.infinity,
      height: 52.0,
      decoration: BoxDecoration(color: context.colorCard, borderRadius: borderRadius, boxShadow: boxshadow),
      child: Row(
        children: [
          for (final item in Nav.values) ...[
            Expanded(
              child: InkWell(
                onTap: () => onChange(item),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 3.0,
                      margin: const EdgeInsets.symmetric(horizontal: 34.0),
                      decoration: BoxDecoration(
                        color: item == selectedNav ? context.colorSelected : Colors.transparent,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Svg(asset: item.icon, color: color(item)),
                        const SizedBox(width: 16.0),
                        Text(item.title, style: context.bodyLarge?.copyWith(color: color(item))),
                      ],
                    ),
                    const SizedBox(height: 3.0),
                  ],
                ),
              ),
            ),
            if (item == Nav.home) Container(width: 1.0, height: 20.0, color: context.colorHint),
          ],
        ],
      ),
    );
  }
}