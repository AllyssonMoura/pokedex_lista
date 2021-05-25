import 'package:flutter/material.dart';
class Pokemon {
  final String photo;
  final String name;
  final String resume;
  final String type;
  final double height;
  final double weight;
  final Color color;

  Pokemon(
      {required this.photo,
      required this.name,
      required this.resume,
      required this.type,
      required this.height,
      required this.weight,
      required this.color});
}
