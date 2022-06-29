import 'package:flutter/material.dart';

NavigationDestination bottomDestination(IconData sicon, IconData icon, String text) {
  return NavigationDestination(
    selectedIcon: Icon(sicon),
    icon: Icon(icon),
    label: text,
  );
}
