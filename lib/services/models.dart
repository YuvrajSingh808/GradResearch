import 'package:firebase_auth/firebase_auth.dart';

class EndUser {
  String name;
  String email;
  String uid;
  String imageUrl;
  String locale;
  String workplaceId;
  String phoneNumber;
  EndUser({this.locale, this.workplaceId, this.phoneNumber}) {
    User user = FirebaseAuth.instance.currentUser;
    name = user.displayName;
    email = user.email;
    uid = user.uid;
    imageUrl = user.photoURL;
  }
}

class Professor extends EndUser {
  String associatedWith, universityAttended, experience;
  Professor({
    this.associatedWith,
    this.universityAttended,
    this.experience,
    String locale,
    String workplaceId,
    String phoneNumber,
  }) : super(
          locale: locale,
          workplaceId: workplaceId,
          phoneNumber: phoneNumber,
        );
}

class Researcher extends EndUser {
  String school, university, achievements, experience;
  double schoolGPA, uniGPA;
  Researcher({
    this.achievements,
    this.university,
    this.school,
    this.uniGPA,
    this.schoolGPA,
    this.experience,
    String locale,
    String workplaceId,
    String phoneNumber,
  }) : super(
          locale: locale,
          workplaceId: workplaceId,
          phoneNumber: phoneNumber,
        );
}
