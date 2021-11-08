import 'package:flutter/material.dart';

enum Flavor {
  DEVELOP,
  RELEASE,
}

class Config {
  static Flavor? environment;

  static String getString() {
    switch (environment) {
      case Flavor.DEVELOP:
        return "DEVELOP";
      case Flavor.RELEASE:
        return "RELEASE";
      default:
        return "環境エラー";
    }
  }
}
