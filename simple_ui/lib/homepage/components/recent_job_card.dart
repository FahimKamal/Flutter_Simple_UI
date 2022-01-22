import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

class RecentJobCard extends StatelessWidget {
  const RecentJobCard(
      {Key? key,
      required this.companyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.hourlyRate})
      : super(key: key);

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: primaryColor,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(5),
                    color: Colors.grey[300],
                    child: Image.asset(logoImagePath),
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(jobTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Text(companyName,
                      style: TextStyle(
                          color: Colors.grey[600]
                      ),
                    )
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: const EdgeInsets.all(5),
                color: Colors.green[300],
                child: Text(
                 "\$" + hourlyRate.toString() + "/h",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
