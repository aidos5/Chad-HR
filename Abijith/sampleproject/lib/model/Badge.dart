import 'package:flutter/material.dart';

class Badge {
  String? badgeName;
  List<String?>? badgeOwners;

  Badge({required this.badgeName, required this.badgeOwners});

  Badge.fromJson(Map<String, dynamic> json)
      : badgeName = json['badgeName'],
        badgeOwners = (json['badgeOwners'] as List<dynamic>?)
            ?.map((e) => e as String?)
            .toList();

  Map<String, dynamic> toJson() =>
      {'badgeName': badgeName, 'badgeOwners': badgeOwners};
}
