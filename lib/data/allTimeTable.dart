class timeTableView {
  List<TimeTable> timeTable;

  timeTableView({this.timeTable});

  timeTableView.fromJson(Map<String, dynamic> json) {
    if (json['timeTable'] != null) {
      timeTable = new List<TimeTable>();
      json['timeTable'].forEach((v) { timeTable.add(new TimeTable.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.timeTable != null) {
      data['timeTable'] = this.timeTable.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TimeTable {
  String time;
  String day;
  String location;
  String facultyName;
  String subject;
  String labClass;
  String Class;

  TimeTable({this.time, this.day, this.location, this.facultyName, this.subject, this.labClass, this.Class});

  TimeTable.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    day = json['day'];
    location = json['location'];
    facultyName = json['faculty_name'];
    subject = json['subject'];
    labClass = json['lab/class'];
    Class = json['class'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['day'] = this.day;
    data['location'] = this.location;
    data['faculty_name'] = this.facultyName;
    data['subject'] = this.subject;
    data['lab/class'] = this.labClass;
    data['class'] = this.Class;
    return data;
  }
}