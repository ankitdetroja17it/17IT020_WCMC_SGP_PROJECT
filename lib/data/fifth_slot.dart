class dataResponse5 {
  List<FifthSlot> fifthSlot;

  dataResponse5({this.fifthSlot});

  dataResponse5.fromJson(Map<String, dynamic> json) {
    if (json['fifth_slot'] != null) {
      fifthSlot = new List<FifthSlot>();
      json['fifth_slot'].forEach((v) {
        fifthSlot.add(new FifthSlot.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fifthSlot != null) {
      data['fifth_slot'] = this.fifthSlot.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FifthSlot {
  String time;
  String day;
  String location;
  String facultyName;
  String subject;
  String labClass;
  String Class;

  FifthSlot(
      {this.time,
        this.day,
        this.location,
        this.facultyName,
        this.subject,
        this.labClass,
      this.Class
      });

  FifthSlot.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    day = json['day'];
    location = json['location'];
    facultyName = json['faculty_name'];
    subject = json['subject'];
    labClass = json['lab/class'];
    Class=json['class'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['day'] = this.day;
    data['location'] = this.location;
    data['faculty_name'] = this.facultyName;
    data['subject'] = this.subject;
    data['lab/class'] = this.labClass;
    data['class']=this.Class;
    return data;
  }
}