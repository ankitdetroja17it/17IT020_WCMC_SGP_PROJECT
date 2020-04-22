class dataResponse3 {
  List<ThirdSlot> thirdSlot;

  dataResponse3({this.thirdSlot});

  dataResponse3.fromJson(Map<String, dynamic> json) {
    if (json['third_slot'] != null) {
      thirdSlot = new List<ThirdSlot>();
      json['third_slot'].forEach((v) {
        thirdSlot.add(new ThirdSlot.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thirdSlot != null) {
      data['third_slot'] = this.thirdSlot.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ThirdSlot {
  String time;
  String day;
  String location;
  String facultyName;
  String subject;
  String labClass;
  String Class;

  ThirdSlot(
      {this.time,
        this.day,
        this.location,
        this.facultyName,
        this.subject,
        this.labClass,
      this.Class
      });

  ThirdSlot.fromJson(Map<String, dynamic> json) {
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