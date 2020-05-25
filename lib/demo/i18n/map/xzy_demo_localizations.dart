import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class XZYDemoLocalizations {
  final Locale locale;
  XZYDemoLocalizations(this.locale);
  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title':'hello',
    },
    'zh': {
      'title':'您好',
    },
  };
  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class XZYDemoLocalizationsDelegate extends LocalizationsDelegate<XZYDemoLocalizations> {
  XZYDemoLocalizationsDelegate();

  @override
  Future<XZYDemoLocalizations> load(Locale locale) {
    // TODO: implement load

    return SynchronousFuture<XZYDemoLocalizations>(
      XZYDemoLocalizations(locale)
    );
    throw UnimplementedError();
  }

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return true;
    throw UnimplementedError();
  }
  @override
  bool shouldReload(LocalizationsDelegate<XZYDemoLocalizations> old) {
    // TODO: implement shouldReload
    return false;
    throw UnimplementedError();
  }
}