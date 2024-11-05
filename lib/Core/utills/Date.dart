// import 'package:intl/intl.dart';
//
// String dateFormatted(DateTime date){
//
//   final DateFormat formatter = DateFormat(' dd / MM / yyyy ');
//   return formatter.format(date);
//
// }


extension FormatDate on DateTime {
  String get dataFormatted => "$day / $month / $year";
  String get getDay  {
    List<String> weekDays = [ "MON", "TUE" , "WED",  "THU"  , "FRI" ,   "SAT" , "SUN"];
    DateTime date = DateTime.now();
    return weekDays[weekday-1];
  }
}