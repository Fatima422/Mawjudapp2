class UserModel {
  String? UsersName;

  String? Job;

  int? UsersID;

  String? Collage;

  String? Major;

  String? Level;

  String? Nationality;

  int? NationalityID;

  String? photo_url;

  Map? Courses;


  UserModel({this.UsersName, this.Job, this.UsersID, this.Collage, this.Major, this.Level,
  this.Nationality, this.NationalityID, this.photo_url, this.Courses});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      UsersName: map['UsersName'],
      Job: map['Job'],
      UsersID: map['UsersID'],
      Collage: map['Collage'],
      Major: map['Major'],
      Level: map['Level'],
      Nationality: map['Nationality'],
      NationalityID: map['NationalityID'],
      photo_url: map['photo_url'],
      Courses: map['Courses'],
    );
  }

  // sending data to our server
  /*Map<String, dynamic> toMap() {
    return {
      'UsersName': UsersName,
      'Job': Job,
      'UsersID': UsersID,
      'Collage': Collage,
      'Major': Major,
      'Level': Level,
      'Nationality': Nationality,
      'NationalityID': NationalityID,
      'photo_url': photo_url
    };
  }*/
}


class CourseModel {
  String? CourseName;

  String? Activity;

  int? CourseID;

  String? Campus;

  String? Room;

  String? TecherName;

  int? Hours;

  int? Section;

  CourseModel({this.CourseName, this.Activity, this.CourseID, this.Campus, this.Room, this.TecherName,
    this.Hours, this.Section});

  // receiving data from server
  factory CourseModel.fromMap(map) {
    return CourseModel(
      CourseName: map['CourseName'],
      Activity: map['Activity'],
      CourseID: map['CourseID'],
      Campus: map['Campus'],
      Room: map['Room'],
      TecherName: map['TecherName'],
      Hours: map['Hours'],
      Section: map['Section'],
    );
  }
}

class ScheduleModel {
  String? CourseName;

  int? CourseID;

  String? Start;

  String? End;


  ScheduleModel({this.CourseName, this.CourseID, this.Start, this.End});

  // receiving data from server
  factory ScheduleModel.fromMap(map) {
    return ScheduleModel(
      CourseName: map['CourseName'],
      CourseID: map['CourseID'],
      Start: map['Start'],
      End: map['End'],

    );
  }

  // sending data to our server
  /*Map<String, dynamic> toMap() {
    return {
      'CourseName': CourseName,
      'CourseID': CourseID,
      'Start': Start,
      'End': End,

    };
  }*/
}