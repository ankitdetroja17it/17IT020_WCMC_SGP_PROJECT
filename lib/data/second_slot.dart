class dataResponse2 {
  List<SecondSlot> secondSlot;

  dataResponse2({this.secondSlot});

  dataResponse2.fromJson(Map<String, dynamic> json) {
    if (json['second_slot'] != null) {
      secondSlot = new List<SecondSlot>();
      json['second_slot'].forEach((v) {
        secondSlot.add(new SecondSlot.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.secondSlot != null) {
      data['second_slot'] = this.secondSlot.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SecondSlot {
  String time;
  String day;
  String location;
  String facultyName;
  String subject;
  String labClass;
  String Class;
  SecondSlot(
      {this.time,
        this.day,
        this.location,
        this.facultyName,
        this.subject,
        this.labClass,
      this.Class
      });

  SecondSlot.fromJson(Map<String, dynamic> json) {
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