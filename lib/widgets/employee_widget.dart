import 'package:flutter/material.dart';

import '../models/employee_model.dart';

class EmployeeListTile extends StatelessWidget {
  const EmployeeListTile({
    Key? key,
    required this.index,
    required this.employeeList,
    required this.workingYearsInDays,
  }) : super(key: key);
  final int index;
  final List<EmployeeModel> employeeList;
  final int workingYearsInDays;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        employeeList[index].employeeImg,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        employeeList[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, left: 2),
                        child: Text(
                          employeeList[index].jobTitle,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, left: 2),
                        child: Text(
                          employeeList[index].email,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (employeeList[index].isActive && (workingYearsInDays > 1825))
              const Positioned(
                top: -5,
                right: 20,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.green,
                  size: 40,
                ),
              )
          ],
        ),
      ),
    );
  }
}
