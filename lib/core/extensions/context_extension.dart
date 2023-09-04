import 'package:best/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';

extension Context on BuildContext{

  AppLocalizations get localization => AppLocalizations.of(this)!;
}