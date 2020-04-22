class dataResponse4 {
  List<FourthSlot> fourthSlot;

  dataResponse4({this.fourthSlot});

  dataResponse4.fromJson(Map<String, dynamic> json) {
    if (json['fourth_slot'] != null) {
      fourthSlot = new List<FourthSlot>();
      json['fourth_slot'].forEach((v) {
        fourthSlot.add(new FourthSlot.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fourthSlot != null) {
      data['fourth_slot'] = this.fourthSlot.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FourthSlot {
  String time;
  String day;
  String location;
  String facultyName;
  String subject;
  String labClass;
  String Class;

  FourthSlot(
      {this.time,
        this.day,
        this.location,
        this.facultyName,
        this.subject,
        this.labClass,
        this.Class
      });

  FourthSlot.fromJson(Map<String, dynamic> json) {
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