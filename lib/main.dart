import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:adopt_petz/blocs/details/details_bloc.dart';
import 'package:adopt_petz/blocs/history/history_bloc.dart';
import 'package:adopt_petz/blocs/pets/pets_bloc.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:adopt_petz/utils/helpers.dart';
import 'package:adopt_petz/views/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(themeMode: themeMode));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.themeMode});

  final AdaptiveThemeMode? themeMode;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PetsBloc()),
        BlocProvider(create: (_) => DetailsBloc()),
        BlocProvider(create: (_) => HistoryBloc()),
      ],
      child: AdaptiveTheme(
        initial: themeMode ?? AdaptiveThemeMode.light,
        light: context.lightTheme,
        dark: context.darkTheme,
        builder: (light, dark) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: Texts.app_name,
            theme: light,
            darkTheme: dark,
            home: const MainPage(),
          );
        },
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Nav selectedNav = Nav.home;

  void onNavChange(Nav nav) => setState(() => selectedNav = nav);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: context.colorCard,
        alignment: Alignment.center,
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          color: context.colorBG,
          child: Column(
            children: [
              Expanded(child: selectedNav.body),
              BottomNavBar(selectedNav: selectedNav, onChange: onNavChange),
            ],
          ),
        ),
      ),
    );
  }
}
