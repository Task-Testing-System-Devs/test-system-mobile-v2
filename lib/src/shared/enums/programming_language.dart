import 'package:test_system/src/shared/assets/app_assets.dart';

typedef LangIcons = ProgrammingLanguageIcons;

enum ProgrammingLanguage {
  c(LangIcons.c, 'C'),
  cPlusPlus(LangIcons.cPlusPlus, 'C++'),
  cSharp(LangIcons.cSharp, 'C#'),
  dart(LangIcons.dart, 'Dart'),
  java(LangIcons.java, 'Java'),
  kotlin(LangIcons.kotlin, 'Kotlin'),
  python(LangIcons.python, 'Python 3'),
  ruby(LangIcons.ruby, 'Ruby'),
  swift(LangIcons.swift, 'Swift');

  final String asset;
  final String name;

  const ProgrammingLanguage(this.asset, this.name);

  static ProgrammingLanguage fromNumber(int number) {
    return ProgrammingLanguage.python;
  }

  static ProgrammingLanguage fromString(String lang) {
    if (lang == 'python3') {
      return ProgrammingLanguage.python;
    }
    if (lang == 'java') {
      return ProgrammingLanguage.java;
    }
    return ProgrammingLanguage.cPlusPlus;
  }
}
