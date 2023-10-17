import 'package:flutter/material.dart';
import 'package:hrms_dashboard/viewapp_page.dart';

class DepartmentWidget extends StatelessWidget {
  const DepartmentWidget({
    super.key,
    required this.iconData,
    required this.height,
    required this.title,
    required this.hodName,
    required this.teamLeaderName,
    required this.noOfEmployees,
    required this.onPress,
    this.iconBackgroundColor = Colors.blue,
  });

  final IconData iconData;
  final double height;
  final String title;
  final String hodName;
  final String teamLeaderName;
  final num noOfEmployees;
  final VoidCallback onPress;
  final Color iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontWeight: FontWeight.w500);
    return Container(
      padding: const EdgeInsets.all(32),
      width: height * 0.44,
      height: height * 0.4,
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: height * 0.06,
            backgroundColor: iconBackgroundColor,
            child: Icon(
              iconData,
              size: height * 0.05,
              color: Colors.white,
            ),
          ),
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("HOD:", style: textStyle),
              Text(hodName, style: textStyle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Team Leader:", style: textStyle),
              Text(teamLeaderName, style: textStyle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("No. of employees:", style: textStyle),
              Text(noOfEmployees.toString(), style: textStyle),
            ],
          ),
          InkWell(
            child: const Text(
              "View All >",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ViewAllPage(name: title)));
            },
          ),
        ],
      ),
    );
  }
}
