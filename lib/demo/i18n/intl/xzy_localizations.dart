import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'xzy_demo_messages_all.dart';
class XZYDemoLocalizations {
  static XZYDemoLocalizations of(BuildContext context) {
    return Localizations.of<XZYDemoLocalizations>(
        context,
        XZYDemoLocalizations
    );
  }

  static Future<XZYDemoLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode: locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((value ) {
      Intl.defaultLocale = localeName;
      return XZYDemoLocalizations();
    });
  }
  String get title => Intl.message(
    'hello',
    name: 'title',
    desc: 'demo localizations',
  );

  String greet(String name) => Intl.message(
    'hello $name',
    name: 'greet',
    desc: 'greet someone.',
    args: [name],
  );
}

class XZYDemoLocalizationsDelegate extends LocalizationsDelegate<XZYDemoLocalizations> {
  XZYDemoLocalizationsDelegate();

  @override
  Future<XZYDemoLocalizations> load(Locale locale) {
    // TODO: implement load

    return XZYDemoLocalizations.load(locale);
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