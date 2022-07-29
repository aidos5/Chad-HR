import 'package:flutter/material.dart';

class NavigationModel {
  Widget some;

  NavigationModel({required this.some});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
      some: RaisedButton(
    onPressed: () {},
    child: Icon(
      Icons.campaign,
      color: Colors.white,
      size: 35.0,
    ),
  )),
  NavigationModel(
    some: RaisedButton(
        onPressed: () {},
        child: Icon(
          Icons.sticky_note_2,
          color: Colors.white,
          size: 35.0,
        )),
  ),
  NavigationModel(
    some: RaisedButton(
        onPressed: () {},
        child: Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 35.0,
        )),
  ),
  NavigationModel(
    some: RaisedButton(
        onPressed: () {},
        child: Icon(
          Icons.supervisor_account_outlined,
          color: Colors.white,
          size: 35.0,
        )),
  ),
  NavigationModel(
    some: RaisedButton(
        onPressed: () {},
        child: Icon(
          Icons.discount,
          color: Colors.white,
          size: 35.0,
        )),
  ),
  NavigationModel(
    some: RaisedButton(
        onPressed: () {},
        child: Icon(
          Icons.info,
          color: Colors.white,
          size: 35.0,
        )),
  ),
];
