import 'package:flutter/material.dart';

class Fonts {
  static const String poppins = 'Poppins';
}

class Texts {
  static const String app_name = 'Adopt Petz';
  static const String home = 'Home';
  static const String history = 'History';
  static const String search_hint = 'Search by name, breed..';
  static const String dogs = '🐶 Dogs';
  static const String cats = '🐱 Cats';
  static const String all = '🐹 All';
  static const String no_pets = 'No pets found for the entered search term';
  static const String no_pets_adopted = 'You’ve not adopted any pets yet';
  static const String pets_adopted = 'Pet’s you’ve adopted';
  static const String meet = 'Meet';
  static const String adopt_me = 'Adopt me for';
  static const String breed = 'Breed';
  static const String age = 'Age';
  static const String gender = 'Gender';
  static const String male = 'Male';
  static const String female = 'Female';
  static const String adopt = 'Adopt';
  static const String cancel = 'Cancel';
  static const String okay = 'Okay';
  static const String go_back = 'Go back';
  static const String adopted = 'Adopted';
  static const String congrats = '🎉\nCongrats!\nYou’ve now adopted\n';
}

class Images {
  static const String path = 'assets/images/';
  static const String png = '.png';
  static const String svg = '.svg';
  static const String home = '${path}home$svg';
  static const String history = '${path}history$svg';
  static const String search = '${path}search$svg';
}

class AppColors {
  static const Color primary = Color(0xFF9662F2);
  static const Color primaryLight = Color(0xFFDAC6FF);
  static const Color primaryDark = Color(0xFF685D7B);
  static const Color lightForeground = Color(0xFF3E3A45);
  static const Color darkForeground = Color(0xFFFFFFFF);
  static const Color lightBackground = Color(0xFFF8F8F8);
  static const Color darkBackground = Color(0xFF2A2A2A);
}

class PrefKeys {
  static const String adopted_ids = 'ADOPTED_PET_IDS';
}

const double maxWidth = 500.0;
final List<BoxShadow> boxshadow = [BoxShadow(blurRadius: 4.0, color: Colors.black.withOpacity(0.25))];
