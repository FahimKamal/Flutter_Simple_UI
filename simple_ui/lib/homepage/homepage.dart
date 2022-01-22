import 'package:flutter/material.dart';
import 'package:simple_ui/components/heading.dart';
import 'package:simple_ui/homepage/components/recent_job_card.dart';
import 'package:simple_ui/models/static_data.dart';

import 'components/custom_appbar.dart';
import 'components/drawer_widget.dart';
import 'components/job_card.dart';
import 'components/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 25,
          ),
          const Heading(text: "Discover a New Path"),
          const SizedBox(
            height: 25,
          ),
          SearchBar(),
          const SizedBox(
            height: 50,
          ),
          const Heading(text: "For You"),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobsForYou.length,
                itemBuilder: (context, index) {
                  return JobCard(
                      companyName: jobsForYou[index].companyName,
                      jobTitle: jobsForYou[index].jobTitle,
                      logoImagePath: jobsForYou[index].logoImagePath,
                      hourlyRate: jobsForYou[index].hourlyRate);
                }),
          ),
          const SizedBox(
            height: 50,
          ),
          const Heading(text: "Recently Added"),
          // const SizedBox(
          //   height: 25,
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    logoImagePath: recentJobs[index].logoImagePath,
                    hourlyRate: recentJobs[index].hourlyRate,
                    jobTitle: recentJobs[index].jobTitle,
                    companyName: recentJobs[index].companyName,
                  );
                }
              ),
            )
          )
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}



