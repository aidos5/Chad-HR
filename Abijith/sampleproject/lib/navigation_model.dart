import 'package:flutter/material.dart';

class NavigationModel {
  IconData icon;

  NavigationModel({required this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
    icon: Icons.campaign,
  ),
  NavigationModel(
    icon: Icons.sticky_note_2,
  ),
  NavigationModel(icon: Icons.account_circle),
  NavigationModel(icon: Icons.supervised_user_circle),
  NavigationModel(icon: Icons.discount),
  NavigationModel(icon: Icons.info),
];
