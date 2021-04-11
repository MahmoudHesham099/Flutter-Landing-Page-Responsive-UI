import 'package:flutter/material.dart';

class Event {
  String name;
  String image;
  String date;
  IconData category;
  String location;
  String fromTo;
  int participants;
  String cost;
  int duration;
  String about;

  Event({
    this.name,
    this.image,
    this.date,
    this.category,
    this.location,
    this.fromTo,
    this.participants,
    this.cost,
    this.duration,
    this.about,
  });
}
