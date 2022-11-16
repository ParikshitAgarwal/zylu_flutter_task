import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_zylu/models/employee_model.dart';
import 'package:flutter_task_zylu/screens/employee_detail_page.dart';

import '../widgets/employee_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<EmployeeModel> employeeList = [];
  DateTime currentDate = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  void fetchData() async {
    var employeeRecord =
        await FirebaseFirestore.instance.collection('employees').get();

    employeeList = employeeRecord.docs
        .map((employee) => EmployeeModel(
            id: employee.data()['id'],
            name: employee.data()['name'],
            email: employee.data()['email'],
            phoneNum: employee.data()['phone_number'],
            jobTitle: employee.data()['job_title'],
            joiningDate: DateTime.parse(employee.data()['joining_date']),
            employeeImg: employee.data()['employee_img'],
            isActive: employee.data()['isActive']))
        .toList();
    // print();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Employee List")),
        body: employeeList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: employeeList.length,
                itemBuilder: ((context, index) {
                  var workingYearsInDays = currentDate
                      .difference(employeeList[index].joiningDate)
                      .inDays;
                  return InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => EmployeeDetailPage(
                              employeeModel: employeeList[index],
                              workingYearsInDays: workingYearsInDays,
                            )))),
                    child: EmployeeListTile(
                        employeeList: employeeList,
                        workingYearsInDays: workingYearsInDays,
                        index: index),
                  );
                }),
              ));
  }
}
