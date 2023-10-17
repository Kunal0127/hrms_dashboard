import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:hrms_dashboard/widgets/department_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 0, 0, 0),
      // appBar: AppBar(
      //   bottom: TabBar(tabs: [
      //     Text("data"),
      //     Text("data"),
      //   ]),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              height: 64,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.red,
                          size: width * 0.025,
                        ),
                        const Text(
                          "HRMS",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  const Flexible(flex: 1, child: SizedBox()),
                  SizedBox(
                    width: width * 0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.dashboard)),
                          const Text("DashBoard"),
                        ]),
                        Row(children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.people_alt)),
                          const Text("Employees"),
                        ]),
                        Row(children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.timer_sharp)),
                          const Text("Shift"),
                        ]),
                        Row(children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.info_outline)),
                          const Text("Company"),
                        ]),
                      ],
                    ),
                  ),
                  const Flexible(flex: 1, child: SizedBox()),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mail_outline_rounded)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none_rounded)),
                      const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.125,
                ),
                const Text(
                  "Info",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Text(
            //     "Info",
            //     style: TextStyle(
            //       fontSize: 26,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: height * 0.06,
            ),
            Container(
              height: height * 0.4,
              width: width * 0.75,
              child: Row(
                children: [
                  Container(
                    // padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    width: height * 0.4,
                    height: height * 0.4,
                    // color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: height * 0.2,
                          child: PieChart(
                            PieChartData(
                              sections: [
                                PieChartSectionData(
                                  title: "55%",
                                  color: const Color.fromARGB(255, 0, 30, 255),
                                  value: 55,
                                  radius: height * 0.09,
                                ),
                                PieChartSectionData(
                                  title: "45%",
                                  color: const Color.fromARGB(255, 247, 2, 255),
                                  value: 45,
                                  radius: height * 0.09,
                                ),
                              ],
                              startDegreeOffset: 60,
                              centerSpaceRadius: 0,
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Male : 450",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Male : 400",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          "Total : 850",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Old Employees",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          LinearPercentIndicator(
                            backgroundColor: Colors.white,
                            lineHeight: 16,
                            percent: 0.7,
                            trailing: const Text(
                              "650",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            barRadius: const Radius.circular(16),
                            progressColor: Colors.purple,
                          ),
                          const Text(
                            "New Employees",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          LinearPercentIndicator(
                            backgroundColor: Colors.white,
                            lineHeight: 16,
                            trailing: const Text(
                              "120",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            percent: 0.5,
                            barRadius: const Radius.circular(16),
                            progressColor: Colors.blue,
                          ),
                          const Text(
                            "Interns",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          LinearPercentIndicator(
                            backgroundColor: Colors.white,
                            lineHeight: 16,
                            percent: 0.3,
                            trailing: const Text(
                              "30",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            barRadius: const Radius.circular(16),
                            progressColor: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.125,
                ),
                const Text(
                  "Departments",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Container(
              height: height * 0.44,
              width: width * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DepartmentWidget(
                    iconData: Icons.brush_rounded,
                    iconBackgroundColor: Colors.orange,
                    height: height,
                    title: "Designer",
                    hodName: "Stephen Quinn",
                    teamLeaderName: "Rikin Roy",
                    noOfEmployees: 50,
                    onPress: () {},
                  ),
                  DepartmentWidget(
                    iconData: Icons.computer_rounded,
                    iconBackgroundColor: Colors.blue,
                    height: height,
                    title: "Developers",
                    hodName: "Mary Stone",
                    teamLeaderName: "Sunny Tiwari",
                    noOfEmployees: 600,
                    onPress: () {},
                  ),
                  DepartmentWidget(
                    iconData: Icons.person_2_sharp,
                    iconBackgroundColor: Colors.purple,
                    height: height,
                    title: "Human Resource",
                    hodName: "Leo Waters",
                    teamLeaderName: "Shivam Desai",
                    noOfEmployees: 50,
                    onPress: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.44,
              width: width * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DepartmentWidget(
                    iconData: Icons.auto_graph_rounded,
                    iconBackgroundColor: Colors.pink,
                    height: height,
                    title: "Bussiness Developer",
                    hodName: "Johanna Woods",
                    teamLeaderName: "Amit Kulkarni",
                    noOfEmployees: 25,
                    onPress: () {},
                  ),
                  DepartmentWidget(
                    iconData: Icons.cloud_circle_rounded,
                    iconBackgroundColor: Colors.cyan,
                    height: height,
                    title: "Database",
                    hodName: "Duane Hogan",
                    teamLeaderName: "Sandip Shah",
                    noOfEmployees: 100,
                    onPress: () {},
                  ),
                  DepartmentWidget(
                    iconData: Icons.calculate,
                    iconBackgroundColor: Colors.green,
                    height: height,
                    title: "Finance & Accounts",
                    hodName: "Lora Hanson",
                    teamLeaderName: "Manoj Rana",
                    noOfEmployees: 25,
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
