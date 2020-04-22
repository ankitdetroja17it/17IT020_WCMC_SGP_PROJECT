class dataResponse6 {
  List<SixthSlot> sixthSlot;

  dataResponse6({this.sixthSlot});

  dataResponse6.fromJson(Map<String, dynamic> json) {
    if (json['sixth_slot'] != null) {
      sixthSlot = new List<SixthSlot>();
      json['sixth_slot'].forEach((v) {
        sixthSlot.add(new SixthSlot.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sixthSlot != null) {
      data['sixth_slot'] = this.sixthSlot.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SixthSlot {
  String time;
  String day;
  String location;
  String facultyName;
  String subject;
  String labClass;
  String Class;

  SixthSlot(
      {this.time,
        this.day,
        this.location,
        this.facultyName,
        this.subject,
        this.labClass,
      this.Class
      });

  SixthSlot.fromJson(Map<String, dynamic> json) {
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