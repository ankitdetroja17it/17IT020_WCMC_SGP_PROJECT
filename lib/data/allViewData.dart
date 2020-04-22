class dataView1 {
  List<DayData> dayData;

  dataView1({this.dayData});

  dataView1.fromJson(Map<String, dynamic> json) {
    if (json['dayData'] != null) {
      dayData = new List<DayData>();
      json['dayData'].forEach((v) {
        dayData.add(new DayData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dayData != null) {
      data['dayData'] = this.dayData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}



class DayData {
  String date;
  String time;
  String day;
  String locationLabClass;
  String Class;
  String actualFaculty;
  String subject;
  String conductedBy;
  String attendance;
  String remark;

  DayData(
      {this.date,
        this.time,
        this.day,
        this.locationLabClass,
        this.Class,
        this.actualFaculty,
        this.subject,
        this.conductedBy,
        this.attendance,
        this.remark
      });

  DayData.fromJson(Map<String, dynamic> json) {
    date = json['Date'];
    time = json['Time'];
    day = json['Day'];
    locationLabClass = json['LocationLabClass'];
    Class = json['Class'];
    actualFaculty = json['ActualFaculty'];
    subject = json['Subject'];
    conductedBy = json['ConductedBy'];
    attendance = json['Attendance'];
    remark = json['Remark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Date'] = this.date;
    data['Time'] = this.time;
    data['Day'] = this.day;
    data['LocationLabClass'] = this.locationLabClass;
    data['Class'] = this.Class;
    data['ActualFaculty'] = this.actualFaculty;
    data['Subject'] = this.subject;
    data['ConductedBy'] = this.conductedBy;
    data['Attendance'] = this.attendance;
    data['Remark'] = this.remark;
    return data;
  }
}