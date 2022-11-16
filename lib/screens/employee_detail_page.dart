import 'package:flutter/material.dart';

import '../models/employee_model.dart';

class EmployeeDetailPage extends StatefulWidget {
  final EmployeeModel employeeModel;
  final int workingYearsInDays;

  const EmployeeDetailPage(
      {Key? key, required this.employeeModel, required this.workingYearsInDays})
      : super(key: key);

  @override
  State<EmployeeDetailPage> createState() => _EmployeeDetailPageState();
}

class _EmployeeDetailPageState extends State<EmployeeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.employeeModel.name),
        actions: [
          if (widget.employeeModel.isActive && widget.workingYearsInDays > 1825)
            const Icon(
              Icons.bookmark,
              color: Colors.green,
            )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(widget.employeeModel.employeeImg)),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.employeeModel.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(widget.employeeModel.jobTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey)),
          const SizedBox(
            height: 20,
          ),
          const HeaderTextContainer(text: "Mobile"),
          BodyTextContainer(
            text: widget.employeeModel.phoneNum.toString(),
          ),
          const SizedBox(
            height: 10,
          ),
          const HeaderTextContainer(text: "Email Address"),
          BodyTextContainer(text: widget.employeeModel.email),
          const SizedBox(
            height: 10,
          ),
          const HeaderTextContainer(text: "Date Hired"),
          BodyTextContainer(
              text:
                  widget.employeeModel.joiningDate.toString().substring(0, 10)),
          const SizedBox(
            height: 10,
          ),
          const HeaderTextContainer(text: "Current Status with Organization"),
          widget.employeeModel.isActive
              ? const BodyTextContainer(text: "Active")
              : const BodyTextContainer(text: "Not Active")
        ],
      ),
    );
  }
}

class BodyTextContainer extends StatelessWidget {
  const BodyTextContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, bottom: 10),
        width: double.infinity,
        child: Text(
          text,
          style: const TextStyle(fontSize: 22, color: Colors.black),
          textAlign: TextAlign.start,
        ));
  }
}

class HeaderTextContainer extends StatelessWidget {
  const HeaderTextContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, bottom: 5),
        width: double.infinity,
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black38),
          textAlign: TextAlign.start,
        ));
  }
}
