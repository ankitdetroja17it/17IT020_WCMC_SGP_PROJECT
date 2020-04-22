import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'data/first_slot.dart';
import 'package:flutter/services.dart';
import 'globals.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: DataTableWidget(),
  ));
}

class DataTableWidget extends StatefulWidget {

  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  final List<Map<String, String>> fm = [];

  List<String> attendanceItemRange = <String>[
    '00-10',
    '10-20',
    '20-30',
    '30-40',
    '40-45',
    '45-50',
    '50-55',
    '55-60',
    '60-65',
    '65-70',
    '70-Above',
  ];
  List<String> conductedFaculty = <String>[
    'PNP',
    'SPP',
    'SGP',
    'MDP',
    'ART',
  ];

  List<String> attendanceItemRangeSelectedValue = List<String>();
  List<String> conductedFacultySelectedValue = List<String>();
  List<String> remarkValue = List<String>();

  @override
  void initState() {
// TODO: implement initState
    super.initState();

    DateTime date = DateTime.now();
    day = DateFormat('EEEEEEEEE').format(date);

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd/MM/yyyy').format(now);

    if (day == "Monday" && time == "9:10-10:10") {
          for (int i = 0; i < data1.firstSlot.length; i++) {
            if (data1.firstSlot[i].day == "Monday") {
              fm.add({
                "Date":formattedDate,
                "Time":time,
                "Day":day,
                "LocationLabClass":
                data1.firstSlot[i].location + "-" + data1.firstSlot[i].labClass,
                "Class":data1.firstSlot[i].Class,
                "ActualFaculty": data1.firstSlot[i].facultyName,
                "Subject":data1.firstSlot[i].subject,

              });
              attendanceItemRangeSelectedValue.add('50-55');
              conductedFacultySelectedValue.add('PNP');
              remarkValue.add("Null");
            }
      }
    }
    else if (day == "Monday" && time == "10:10-11:10") {
      for (int i = 0; i < data2.secondSlot.length; i++) {
        if (data2.secondSlot[i].day == "Monday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data2.secondSlot[i].location + "-" + data2.secondSlot[i].labClass,
            "Class":data2.secondSlot[i].Class,
            "ActualFaculty": data2.secondSlot[i].facultyName,
            "Subject":data2.secondSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Monday" && time == "12:10-1:10") {
      for (int i = 0; i < data3.thirdSlot.length; i++) {
        if (data3.thirdSlot[i].day == "Monday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data3.thirdSlot[i].location + "-" + data3.thirdSlot[i].labClass,
            "Class":data3.thirdSlot[i].Class,
            "ActualFaculty": data3.thirdSlot[i].facultyName,
            "Subject":data3.thirdSlot[i].subject,


          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Monday" && time == "1:10-2:10") {
      for (int i = 0; i < data4.fourthSlot.length; i++) {
        if (data4.fourthSlot[i].day == "Monday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data4.fourthSlot[i].location + "-" + data4.fourthSlot[i].labClass,
            "Class":data4.fourthSlot[i].Class,
            "ActualFaculty": data4.fourthSlot[i].facultyName,
            "Subject":data4.fourthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Monday" && time == "2:20-3:20") {
      for (int i = 0; i < data5.fifthSlot.length; i++) {
        if (data5.fifthSlot[i].day == "Monday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data5.fifthSlot[i].location + "-" + data5.fifthSlot[i].labClass,
            "Class":data5.fifthSlot[i].Class,
            "ActualFaculty": data5.fifthSlot[i].facultyName,
            "Subject":data5.fifthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Monday" && time == "3:20-4:20") {
      for (int i = 0; i < data6.sixthSlot.length; i++) {
        if (data6.sixthSlot[i].day == "Monday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data6.sixthSlot[i].location + "-" + data6.sixthSlot[i].labClass,
            "Class":data6.sixthSlot[i].Class,
            "ActualFaculty": data6.sixthSlot[i].facultyName,
            "Subject":data6.sixthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Tuesday" && time == "9:10-10:10") {
      for (int i = 0; i < data1.firstSlot.length; i++) {
        if (data1.firstSlot[i].day == "Tuesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data1.firstSlot[i].location + "-" + data1.firstSlot[i].labClass,
            "Class":data1.firstSlot[i].Class,
            "ActualFaculty": data1.firstSlot[i].facultyName,
            "Subject":data1.firstSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Tuesday" && time == "10:10-11:10") {
      for (int i = 0; i < data2.secondSlot.length; i++) {
        if (data2.secondSlot[i].day == "Tuesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data2.secondSlot[i].location + "-" + data2.secondSlot[i].labClass,
            "Class":data2.secondSlot[i].Class,
            "ActualFaculty": data2.secondSlot[i].facultyName,
            "Subject":data2.secondSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Tuesday" && time == "12:10-1:10") {
      for (int i = 0; i < data3.thirdSlot.length; i++) {
        if (data3.thirdSlot[i].day == "Tuesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data3.thirdSlot[i].location + "-" + data3.thirdSlot[i].labClass,
            "Class":data3.thirdSlot[i].Class,
            "ActualFaculty": data3.thirdSlot[i].facultyName,
            "Subject":data3.thirdSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Tuesday" && time == "1:10-2:10") {
      for (int i = 0; i < data4.fourthSlot.length; i++) {
        if (data4.fourthSlot[i].day == "Tuesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data4.fourthSlot[i].location + "-" + data4.fourthSlot[i].labClass,
            "Class":data4.fourthSlot[i].Class,
            "ActualFaculty": data4.fourthSlot[i].facultyName,
            "Subject":data4.fourthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Tuesday" && time == "2:20-3:20") {
      for (int i = 0; i < data5.fifthSlot.length; i++) {
        if (data5.fifthSlot[i].day == "Tuesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data5.fifthSlot[i].location + "-" + data5.fifthSlot[i].labClass,
            "Class":data5.fifthSlot[i].Class,
            "ActualFaculty": data5.fifthSlot[i].facultyName,
            "Subject":data5.fifthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Tuesday" && time == "3:20-4:20") {
      for (int i = 0; i < data6.sixthSlot.length; i++) {
        if (data6.sixthSlot[i].day == "Tuesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data6.sixthSlot[i].location + "-" + data6.sixthSlot[i].labClass,
            "Class":data6.sixthSlot[i].Class,
            "ActualFaculty": data6.sixthSlot[i].facultyName,
            "Subject":data6.sixthSlot[i].subject,

          });

          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Wednesday" && time == "9:10-10:10") {
      for (int i = 0; i < data1.firstSlot.length; i++) {
        if (data1.firstSlot[i].day == "Wednesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data1.firstSlot[i].location + "-" + data1.firstSlot[i].labClass,
            "Class":data1.firstSlot[i].Class,
            "ActualFaculty": data1.firstSlot[i].facultyName,
            "Subject":data1.firstSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Wednesday" && time == "10:10-11:10") {
      for (int i = 0; i < data2.secondSlot.length; i++) {
        if (data2.secondSlot[i].day == "Wednesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data2.secondSlot[i].location + "-" + data2.secondSlot[i].labClass,
            "Class":data2.secondSlot[i].Class,
            "ActualFaculty": data2.secondSlot[i].facultyName,
            "Subject":data2.secondSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Wednesday" && time == "12:10-1:10") {
      for (int i = 0; i < data3.thirdSlot.length; i++) {
        if (data3.thirdSlot[i].day == "Wednesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data3.thirdSlot[i].location + "-" + data3.thirdSlot[i].labClass,
            "Class":data3.thirdSlot[i].Class,
            "ActualFaculty": data3.thirdSlot[i].facultyName,
            "Subject":data3.thirdSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Wednesday" && time == "1:10-2:10") {
      for (int i = 0; i < data4.fourthSlot.length; i++) {
        if (data4.fourthSlot[i].day == "Wednesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data4.fourthSlot[i].location + "-" + data4.fourthSlot[i].labClass,
            "Class":data4.fourthSlot[i].Class,
            "ActualFaculty": data4.fourthSlot[i].facultyName,
            "Subject":data4.fourthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Wednesday" && time == "2:20-3:20") {
      for (int i = 0; i < data5.fifthSlot.length; i++) {
        if (data5.fifthSlot[i].day == "Wednesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data5.fifthSlot[i].location + "-" + data5.fifthSlot[i].labClass,
            "Class":data5.fifthSlot[i].Class,
            "ActualFaculty": data5.fifthSlot[i].facultyName,
            "Subject":data5.fifthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Wednesday" && time == "3:20-4:20") {
      for (int i = 0; i < data6.sixthSlot.length; i++) {
        if (data6.sixthSlot[i].day == "Wednesday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data6.sixthSlot[i].location + "-" + data6.sixthSlot[i].labClass,
            "Class":data6.sixthSlot[i].Class,
            "ActualFaculty": data6.sixthSlot[i].facultyName,
            "Subject":data6.sixthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Thursday" && time == "9:10-10:10") {
      for (int i = 0; i < data1.firstSlot.length; i++) {
        if (data1.firstSlot[i].day == "Thursday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data1.firstSlot[i].location + "-" + data1.firstSlot[i].labClass,
            "Class":data1.firstSlot[i].Class,
            "ActualFaculty": data1.firstSlot[i].facultyName,
            "Subject":data1.firstSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Thursday" && time == "10:10-11:10") {
      for (int i = 0; i < data2.secondSlot.length; i++) {
        if (data2.secondSlot[i].day == "Thursday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data2.secondSlot[i].location + "-" + data2.secondSlot[i].labClass,
            "Class":data2.secondSlot[i].Class,
            "ActualFaculty": data2.secondSlot[i].facultyName,
            "Subject":data2.secondSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Thursday" && time == "12:10-1:10") {
      for (int i = 0; i < data3.thirdSlot.length; i++) {
        if (data3.thirdSlot[i].day == "Thursday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data3.thirdSlot[i].location + "-" + data3.thirdSlot[i].labClass,
            "Class":data3.thirdSlot[i].Class,
            "ActualFaculty": data3.thirdSlot[i].facultyName,
            "Subject":data3.thirdSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Thursday" && time == "1:10-2:10") {
      for (int i = 0; i < data4.fourthSlot.length; i++) {
        if (data4.fourthSlot[i].day == "Thursday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data4.fourthSlot[i].location + "-" + data4.fourthSlot[i].labClass,
            "Class":data4.fourthSlot[i].Class,
            "ActualFaculty": data4.fourthSlot[i].facultyName,
            "Subject":data4.fourthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Thursday" && time == "2:20-3:20") {
      for (int i = 0; i < data5.fifthSlot.length; i++) {
        if (data5.fifthSlot[i].day == "Thursday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data5.fifthSlot[i].location + "-" + data5.fifthSlot[i].labClass,
            "Class":data5.fifthSlot[i].Class,
            "ActualFaculty": data5.fifthSlot[i].facultyName,
            "Subject":data5.fifthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Thursday" && time == "3:20-4:20") {
      for (int i = 0; i < data6.sixthSlot.length; i++) {
        if (data6.sixthSlot[i].day == "Thursday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data6.sixthSlot[i].location + "-" + data6.sixthSlot[i].labClass,
            "Class":data6.sixthSlot[i].Class,
            "ActualFaculty": data6.sixthSlot[i].facultyName,
            "Subject":data6.sixthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Friday" && time == "9:10-10:10") {
      for (int i = 0; i < data1.firstSlot.length; i++) {
        if (data1.firstSlot[i].day == "Friday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data1.firstSlot[i].location + "-" + data1.firstSlot[i].labClass,
            "Class":data1.firstSlot[i].Class,
            "ActualFaculty": data1.firstSlot[i].facultyName,
            "Subject":data1.firstSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Friday" && time == "10:10-11:10") {
      for (int i = 0; i < data2.secondSlot.length; i++) {
        if (data2.secondSlot[i].day == "Friday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data2.secondSlot[i].location + "-" + data2.secondSlot[i].labClass,
            "Class":data2.secondSlot[i].Class,
            "ActualFaculty": data2.secondSlot[i].facultyName,
            "Subject":data2.secondSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Friday" && time == "12:10-1:10") {
      for (int i = 0; i < data3.thirdSlot.length; i++) {
        if (data3.thirdSlot[i].day == "Friday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data3.thirdSlot[i].location + "-" + data3.thirdSlot[i].labClass,
            "Class":data3.thirdSlot[i].Class,
            "ActualFaculty": data3.thirdSlot[i].facultyName,
            "Subject":data3.thirdSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Friday" && time == "1:10-2:10") {
      for (int i = 0; i < data4.fourthSlot.length; i++) {
        if (data4.fourthSlot[i].day == "Friday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data4.fourthSlot[i].location + "-" + data4.fourthSlot[i].labClass,
            "Class":data4.fourthSlot[i].Class,
            "ActualFaculty": data4.fourthSlot[i].facultyName,
            "Subject":data4.fourthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Friday" && time == "2:20-3:20") {
      for (int i = 0; i < data5.fifthSlot.length; i++) {
        if (data5.fifthSlot[i].day == "Friday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data5.fifthSlot[i].location + "-" + data5.fifthSlot[i].labClass,
            "Class":data5.fifthSlot[i].Class,
            "ActualFaculty": data5.fifthSlot[i].facultyName,
            "Subject":data5.fifthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Friday" && time == "3:20-4:20") {
      for (int i = 0; i < data6.sixthSlot.length; i++) {
        if (data6.sixthSlot[i].day == "Friday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data6.sixthSlot[i].location + "-" + data6.sixthSlot[i].labClass,
            "Class":data6.sixthSlot[i].Class,
            "ActualFaculty": data6.sixthSlot[i].facultyName,
            "Subject":data6.sixthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Saturday" && time == "9:10-10:10") {
      for (int i = 0; i < data1.firstSlot.length; i++) {
        if (data1.firstSlot[i].day == "Saturday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data1.firstSlot[i].location + "-" + data1.firstSlot[i].labClass,
            "Class":data1.firstSlot[i].Class,
            "ActualFaculty": data1.firstSlot[i].facultyName,
            "Subject":data1.firstSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Saturday" && time == "10:10-11:10") {
      for (int i = 0; i < data2.secondSlot.length; i++) {
        if (data2.secondSlot[i].day == "Saturday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data2.secondSlot[i].location + "-" + data2.secondSlot[i].labClass,
            "Class":data2.secondSlot[i].Class,
            "ActualFaculty": data2.secondSlot[i].facultyName,
            "Subject":data2.secondSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Saturday" && time == "12:10-1:10") {
      for (int i = 0; i < data3.thirdSlot.length; i++) {
        if (data3.thirdSlot[i].day == "Saturday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data3.thirdSlot[i].location + "-" + data3.thirdSlot[i].labClass,
            "Class":data3.thirdSlot[i].Class,
            "ActualFaculty": data3.thirdSlot[i].facultyName,
            "Subject":data3.thirdSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Saturday" && time == "1:10-2:10") {
      for (int i = 0; i < data4.fourthSlot.length; i++) {
        if (data4.fourthSlot[i].day == "Saturday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data4.fourthSlot[i].location + "-" + data4.fourthSlot[i].labClass,
            "Class":data4.fourthSlot[i].Class,
            "ActualFaculty": data4.fourthSlot[i].facultyName,
            "Subject":data4.fourthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Saturday" && time == "2:20-3:20") {
      for (int i = 0; i < data5.fifthSlot.length; i++) {
        if (data5.fifthSlot[i].day == "Saturday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data5.fifthSlot[i].location + "-" + data5.fifthSlot[i].labClass,
            "Class":data5.fifthSlot[i].Class,
            "ActualFaculty": data5.fifthSlot[i].facultyName,
            "Subject":data5.fifthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }
    else if (day == "Saturday" && time == "3:20-4:20") {
      for (int i = 0; i < data6.sixthSlot.length; i++) {
        if (data6.sixthSlot[i].day == "Saturday") {
          fm.add({
            "Date":formattedDate,
            "Time":time,
            "Day":day,
            "LocationLabClass":
            data6.sixthSlot[i].location + "-" + data6.sixthSlot[i].labClass,
            "Class":data6.sixthSlot[i].Class,
            "ActualFaculty": data6.sixthSlot[i].facultyName,
            "Subject":data6.sixthSlot[i].subject,

          });
          attendanceItemRangeSelectedValue.add('50-55');
          conductedFacultySelectedValue.add('PNP');
          remarkValue.add("Null");
        }
      }
    }

  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   backgroundColor: Colors.black,
        //   title: Text("CHARUSAT"),
        // ),
          appBar:PreferredSize(
        preferredSize: Size.fromRadius(20.0), 
      child:AppBar(
        leading: BackButton(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
        title: Text("Today's Slot Table"),
        centerTitle: true,
        
        //title: Text("CHARUSAT"),
      ),),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              DataTable(
                columns: [
                  DataColumn(label: Text('Location')),
                  DataColumn(label: Text('Act.Faculty')),
                  DataColumn(label: Text('Cond.By')),
                  DataColumn(label: Text('Attendance')),
                  DataColumn(label: Text('Remarks')),
                ],
                rows: getRow(),
              ),
              RaisedButton(
                onPressed: () {
                  int length = fm.length;
                  for (int i = 0; i < length; i++) {
                    try {
                      Map<String, String> data = Map<String, String>();
                      data['Conducted'] = conductedFacultySelectedValue[i];
                      data['Attendance'] = attendanceItemRangeSelectedValue[i];
                      data['Remark'] = remarkValue[i];
                      fm[i].addAll(data);
                    } catch (e) {
                      print(e);
                    }
                  }
                  print(fm);
                  postRequest();
                },
                child: Text("Submit"),
              )
            ],
          ),
        ));
  }

  Future<http.Response> postRequest() async {
    var url = 'https://resourcewcmc.000webhostapp.com/appinsert.php';
    var response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: json.encode(fm));
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  List<DataRow> getRow() {
    List<DataRow> list = List<DataRow>();
    try {
      for (int counter = 0; counter < fm.length; counter++) {
        list.add(DataRow(
          cells: <DataCell>[
            //Extracting from Map element the value
            DataCell(Text(fm[counter]["LocationLabClass"])),
            DataCell(Text(fm[counter]["ActualFaculty"])),
            DataCell(
              DropdownButton<String>(
                value: conductedFacultySelectedValue[counter],
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 20,
                elevation: 8,
                style: TextStyle(color: Colors.red, fontSize: 15),
                onChanged: (String newvalue1) {
                  setState(() {
                    conductedFacultySelectedValue[counter] = newvalue1;
                  });
                },
                items: conductedFaculty
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            DataCell(
              DropdownButton<String>(
                value: attendanceItemRangeSelectedValue[counter],
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 20,
                elevation: 8,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
                onChanged: (String newvalue) {
                  attendanceItemRangeSelectedValue[counter] = newvalue;
                  setState(() {});
                },
                items: attendanceItemRange.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
            DataCell(
              new TextField(
                autocorrect: true,
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300),
                maxLength: 10,
                onChanged: (String text){
                  setState(() {
                    remarkValue[counter]=text;
                  });
                },
              ),
              showEditIcon: true,
            ),
          ],
        ));
      }
    } catch (e) {
      print(e);
    }
    return list;
  }
}
