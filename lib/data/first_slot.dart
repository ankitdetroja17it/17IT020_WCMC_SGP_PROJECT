class dataResponse1 {
  List<FirstSlot> firstSlot;

  dataResponse1({this.firstSlot});

  dataResponse1.fromJson(Map<String, dynamic> json) {
    if (json['first_slot'] != null) {
      firstSlot = new List<FirstSlot>();
      json['first_slot'].forEach((v) {
        firstSlot.add(new FirstSlot.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.firstSlot != null) {
      data['first_slot'] = this.firstSlot.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FirstSlot {
  String time;
  String day;
  String location;
  String facultyName;
  String subject;
  String labClass;
  String Class;

  FirstSlot(
      {this.time,
        this.day,
        this.location,
        this.facultyName,
        this.subject,
        this.labClass,
        this.Class
      });

  FirstSlot.fromJson(Map<String, dynamic> json) {
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