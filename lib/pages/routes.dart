import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zaadsystem_flutter/pages/home.dart';
import 'package:zaadsystem_flutter/pages/zaadService.dart';

var approutes = {
  "lib/pages/zaadService.dart": ((context) => const ZaadClass()),
  "lib/pages/home.dart": ((context) => const Home())
};
