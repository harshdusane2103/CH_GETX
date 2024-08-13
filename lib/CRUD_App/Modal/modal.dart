class EmployeeModal {

  late String id,name,jobRole;

  EmployeeModal({required this.id,required this.name,required this.jobRole});
  factory EmployeeModal.fromMap(Map m1)
  {
    return EmployeeModal(id: m1['id'], name: m1['name'], jobRole: m1['jobRole'] ??'');
  }
}
