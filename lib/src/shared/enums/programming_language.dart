import 'package:test_system/src/shared/assets/app_assets.dart';

typedef LangIcons = ProgrammingLanguageIcons;

enum ProgrammingLanguage {
  c(LangIcons.c),
  cPlusPlus(LangIcons.cPlusPlus),
  cSharp(LangIcons.cSharp),
  dart(LangIcons.dart),
  java(LangIcons.java),
  kotlin(LangIcons.kotlin),
  python(LangIcons.python),
  ruby(LangIcons.ruby),
  swift(LangIcons.swift);

  final String asset;

  const ProgrammingLanguage(this.asset);
}
