import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
  }) : super(key: key);

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    child: Image.asset(logoImagePath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      child: const Text("Part Time",
                          style: TextStyle(color: Colors.white)),
                      color: Colors.grey[500],
                      padding: const EdgeInsets.all(8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(jobTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),
                ),
              ),
              Text("\$" + hourlyRate.toString() + "/hr"),
            ],
          ),
        ),
      ),
    );
  }
}
