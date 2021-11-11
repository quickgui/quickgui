import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gettext/gettext.dart';
import 'package:gettext_parser/gettext_parser.dart' as gettext_parser;

class QuickguiLocalizations {
  final _gt = Gettext(
    onWarning: ((message) {
      if (kDebugMode) {
        // ignore: avoid_print
        print('$message\n');
        final r = RegExp(r'^No translation was found for msgid "(.*)" in msgctxt "(.*)" and domain "(.*)"$');
        final matches = r.firstMatch(message);
        var msgid = matches!.group(1);
        // ignore: avoid_print
        print('\nmsgid "$msgid"\nmsgstr ""\n \n');
      }
    }),
  );

  QuickguiLocalizations.fromPO(String poContent) {
    _gt.addLocale(gettext_parser.po.parse(poContent));
  }

  static QuickguiLocalizations of(BuildContext context) => Localizations.of<QuickguiLocalizations>(context, QuickguiLocalizations)!;

  String t(String key) => _gt.gettext(key);
}