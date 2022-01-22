import 'package:flutter/material.dart';

final bgColor = Colors.grey[300];
final primaryColor = Colors.grey[100];
const defaultPadding = 25.0;

class Job {
  String companyName, jobTitle, logoImagePath;
  int hourlyRate;

  Job(
      {required this.companyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.hourlyRate});
}

final jobsForYou = [
  Job(companyName: "Uber", jobTitle: "UI Designer", logoImagePath: "assets/icons/007-uber.png", hourlyRate: 45),
  Job(companyName: "Google", jobTitle: "Product Dev", logoImagePath: "assets/icons/002-google.png", hourlyRate: 80),
  Job(companyName: "Apple", jobTitle: "Software Eng.", logoImagePath: "assets/icons/001-apple.png", hourlyRate: 95),
];

final recentJobs = [
  Job(companyName: "Nike", jobTitle: "Web Designer", logoImagePath: "assets/icons/004-nike.png", hourlyRate: 20),
  Job(companyName: "Apple", jobTitle: "Software Eng.", logoImagePath: "assets/icons/001-apple.png", hourlyRate: 95),
  Job(companyName: "Google", jobTitle: "Product Dev", logoImagePath: "assets/icons/002-google.png", hourlyRate: 44)
];