import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kide/models/EventDetail.dart';

class SubEvent {
  final Key id;
  final String name;
  final String date;
  final String time;
  final String description;
  final String location;
  final String linkDetails;
  final String linkRegister;
  final LatLng marker;
  final List<String> universities;
  bool isBookmarked;
  final List<EventDetail> details;

  SubEvent({
    @required this.id,
    @required this.name,
    @required this.date,
    @required this.time,
    this.description,
    @required this.location,
    this.marker,
    @required this.linkDetails,
    @required this.linkRegister,
    @required this.universities,
    this.isBookmarked,
    @required this.details
  });
}