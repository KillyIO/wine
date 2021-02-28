import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/core/app_production.dart';
import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.production;

  configureInjection(Environment.prod);

  runApp(AppProduction());
}
