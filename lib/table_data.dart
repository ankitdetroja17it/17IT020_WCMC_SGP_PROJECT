import 'package:flutter/material.dart';
import 'globals.dart';
import 'data/first_slot.dart';
import 'package:intl/intl.dart';

class f_mon extends StatefulWidget {
  @override
  _f_monState createState() => _f_monState();
}

class _f_monState extends State<f_mon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: createTable(),
    );
  }


  Widget createTable() {
    String dropdownvalue = '50-55';
    String dropdownvalue1 = '50-55';
    String dropdownvalue2 = '50-55';
    String dropdownvalue3 = '50-55';
    String dropdownvalue4 = '50-55';
    String dropdownvalue5 = '50-55';
    String dropdownvalue6 = '50-55';
    String dropdownvalue7 = '50-55';
    String dropdownvalue8 = '50-55';
    String dropdownvalue9 = '50-55';
    String dropdownvalue10 = '50-55';
    String dropdownvalue11 = '50-55';
    String dropdownvalue12 = '50-55';
    List<String> dropdowniteams = <String>[
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
    List<int> srno = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    int cnt = -1;
    List<TableRow> rows = [];

    for (int i = 0; i < data1.firstSlot.length; i++) {
      if (data1.firstSlot[i].day == "Monday") {
        cnt++;
        rows.add(TableRow(
            decoration: new BoxDecoration(
                color: Colors.yellow
            ),
            children: [
              Text('${srno[cnt]}'),
              Text(data1.firstSlot[i].location + "-" +
                  data1.firstSlot[i].labClass),
              Text(data1.firstSlot[i].facultyName),
              TextField(
                decoration: const InputDecoration(hintText: "PNP"),
              ),

              DropdownButton<String>(
                value: dropdownvalue3,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 20,
                elevation: 24,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
                onChanged: (String newvalue) {
                  setState(() {
                    dropdownvalue3 = newvalue;
                  });
                },
                items: dropdowniteams.map<DropdownMenuItem<String>>((
                    String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              TextField(),
            ]
        )
        );
      }
    }
    return Table(children: rows);
  }

}

