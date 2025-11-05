import 'dart:ui';
import 'package:rpac_fitness/Data/Schedule.dart';

class Category {
  String name;
  String imgName;
  String time;
  String room;
  String date;
  List<bool> isOpen;
  List<Schedule> scheduledTimes;
  List<Category> subCategories;

  Category(
      {
        required this.name,
        required this.imgName,
        required this.time,
        required this.room,
        required this.date,
        required this.isOpen,
        required this.scheduledTimes,
        required this.subCategories,
  }
  );
}
