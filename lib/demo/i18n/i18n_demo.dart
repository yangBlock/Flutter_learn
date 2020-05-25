import 'package:flutter/material.dart';
import 'package:flutterapptext/demo/i18n/intl/xzy_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(locale.toString()),
            Text(
//              Localizations.of(context, XZYDemoLocalizations).title,
              XZYDemoLocalizations.of(context).greet('HELL'),
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      ),
    );
  }
}
