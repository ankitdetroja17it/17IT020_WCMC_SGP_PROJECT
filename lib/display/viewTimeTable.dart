import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wcmcproject/globals.dart'as globals;
import 'package:wcmcproject/data/allTimeTable.dart';
import 'package:wcmcproject/globals.dart';
 void main(){
   String _Class2;
   runApp(viewTimeTable(_Class2));
 }

 class viewTimeTable extends StatefulWidget {
  String Class1;
   viewTimeTable(String Class){
    Class1=Class;
    globals.Class2=Class1;
  }

   @override
   _viewTimeTableState createState() => _viewTimeTableState();
 }

 class _viewTimeTableState extends State<viewTimeTable> {
   final List<Map<String, String>> tt = [];
   Widget build(BuildContext context) {
    //  SystemChrome.setPreferredOrientations([
    //    DeviceOrientation.landscapeLeft,
    //    DeviceOrientation.landscapeRight,
    //  ]);
     return Scaffold(
      //  appBar: AppBar(
      //    centerTitle: true,
      //    backgroundColor: Colors.black,
      //    title: Text(globals.Class2+"  "+"Time Table"),
      //  ),
      appBar:PreferredSize(
        preferredSize: Size.fromRadius(20.0), 
      child:AppBar(
        leading: BackButton(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
        title: Text(globals.Class2+"  "+"Time Table"),
        centerTitle: true,
        
        //title: Text("CHARUSAT"),
      ),),
       body:SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
             child: Column(
                 children: <Widget>[
             DataTable(
             columns: [
             DataColumn(label: Text('Time')),
           DataColumn(label: Text('Day')),
           DataColumn(label: Text('Location')),
           DataColumn(label: Text('Faculty Name')),
           DataColumn(label: Text('Subject')),
           DataColumn(label: Text('Lab/Class')),
           ],
           rows: getRow(),
     ),
     ]
     ),
     )
       )
     );
   }
   @override
   void initState() {
     if (Class2 == "2IT-1") {
       for (int i = 0; i < data8.timeTable.length; i++) {
         if (globals.data8.timeTable[i].Class == "2IT1") {
           tt.add({
             "Time": globals.data8.timeTable[i].time,
             "Day": globals.data8.timeTable[i].day,
             "Location": globals.data8.timeTable[i].location,
             "Faculty Name": globals.data8.timeTable[i].facultyName,
             "Subject": globals.data8.timeTable[i].subject,
             "Lab/Class": globals.data8.timeTable[i].labClass,

           });
         }
       }
     }
     else if (Class2 == "2IT-2") {
       for (int i = 0; i < data8.timeTable.length; i++) {
         if (globals.data8.timeTable[i].Class == "2IT2") {
           tt.add({
             "Time": globals.data8.timeTable[i].time,
             "Day": globals.data8.timeTable[i].day,
             "Location": globals.data8.timeTable[i].location,
             "Faculty Name": globals.data8.timeTable[i].facultyName,
             "Subject": globals.data8.timeTable[i].subject,
             "Lab/Class": globals.data8.timeTable[i].labClass,

           });
         }
       }
     }
     else if (Class2 == "4IT-1") {
       for (int i = 0; i < data8.timeTable.length; i++) {
         if (globals.data8.timeTable[i].Class == "4IT1") {
           tt.add({
             "Time": globals.data8.timeTable[i].time,
             "Day": globals.data8.timeTable[i].day,
             "Location": globals.data8.timeTable[i].location,
             "Faculty Name": globals.data8.timeTable[i].facultyName,
             "Subject": globals.data8.timeTable[i].subject,
             "Lab/Class": globals.data8.timeTable[i].labClass,

           });
         }
       }
     }
     else if (Class2 == "4IT-2") {
       for (int i = 0; i < data8.timeTable.length; i++) {
         if (globals.data8.timeTable[i].Class == "4IT2") {
           tt.add({
             "Time": globals.data8.timeTable[i].time,
             "Day": globals.data8.timeTable[i].day,
             "Location": globals.data8.timeTable[i].location,
             "Faculty Name": globals.data8.timeTable[i].facultyName,
             "Subject": globals.data8.timeTable[i].subject,
             "Lab/Class": globals.data8.timeTable[i].labClass,

           });
         }
       }
     }
     else if (Class2 == "6IT-1") {
       for (int i = 0; i < data8.timeTable.length; i++) {
         if (globals.data8.timeTable[i].Class == "6IT1") {
           tt.add({
             "Time": globals.data8.timeTable[i].time,
             "Day": globals.data8.timeTable[i].day,
             "Location": globals.data8.timeTable[i].location,
             "Faculty Name": globals.data8.timeTable[i].facultyName,
             "Subject": globals.data8.timeTable[i].subject,
             "Lab/Class": globals.data8.timeTable[i].labClass,

           });
         }
       }
     }
     else if (Class2 == "6IT-2") {
       for (int i = 0; i < data8.timeTable.length; i++) {
         if (globals.data8.timeTable[i].Class == "6IT2") {
           tt.add({
             "Time": globals.data8.timeTable[i].time,
             "Day": globals.data8.timeTable[i].day,
             "Location": globals.data8.timeTable[i].location,
             "Faculty Name": globals.data8.timeTable[i].facultyName,
             "Subject": globals.data8.timeTable[i].subject,
             "Lab/Class": globals.data8.timeTable[i].labClass,

           });
         }
       }
     }
   }

   List<DataRow> getRow() {
     List<DataRow> list = List<DataRow>();
     try {
       for (int counter = 0; counter < tt.length; counter++) {
         list.add(DataRow(
           cells: <DataCell>[
             //Extracting from Map element the value
             DataCell(Text(tt[counter]["Time"])),
             DataCell(Text(tt[counter]["Day"])),
             DataCell(Text(tt[counter]["Location"])),
             DataCell(Text(tt[counter]["Faculty Name"])),
             DataCell(Text(tt[counter]["Subject"])),
             DataCell(Text(tt[counter]["Lab/Class"])),

           ],
         ));
       }
     } catch (e) {
       print(e);
       print("hi");
     }
     return list;
   }
 }