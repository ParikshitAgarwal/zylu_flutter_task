class EmployeeModel {
  final int id;
  final String name;
  final String email;
  final int phoneNum;
  final String jobTitle;
  final DateTime joiningDate;
  final bool isActive;
  final String employeeImg;
  EmployeeModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.phoneNum,
      required this.jobTitle,
      required this.isActive,
      required this.employeeImg,
      required this.joiningDate});
}
