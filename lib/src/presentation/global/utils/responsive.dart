import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 768;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width >= 768 &&
    MediaQuery.of(context).size.width < 1024;

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1024;
