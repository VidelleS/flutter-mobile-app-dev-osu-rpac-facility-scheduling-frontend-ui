import 'package:rpac_fitness/Data/Category.dart';
import 'package:rpac_fitness/Data/Schedule.dart';


class SubCategory extends Category {

  SubCategory(
      {
        required String name,
        required String imgName,
        required String time,
        required String room,
        required String date,
        required List<bool> isOpen,
        required List<Schedule> scheduledTimes,
        required List<Category> subCategories,

  }):super(
      name: name,
      imgName: imgName,
      time: time,
      room: room,
      date: date,
      isOpen: isOpen,
      scheduledTimes: scheduledTimes,
      subCategories: subCategories
  );
}