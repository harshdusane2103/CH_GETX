
import 'package:chapter_getx_ui/CRUD_App/Modal/modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController {
  RxList<EmployeeModal> employeeList = <EmployeeModal>[].obs;

 TextEditingController txtid = TextEditingController();
   TextEditingController txtname = TextEditingController();
  TextEditingController txtjobrole = TextEditingController();


  void addEmployee(EmployeeModal employee)
  {
    employeeList.add(employee);
  }
  void removeEmployee(int index)
  {
    employeeList.removeAt(index);
  }
  // void updateEmployee(int index)
  // {
  //   txtid = TextEditingController(text: employeeList[index].id);
  //   txtname = TextEditingController(text: employeeList[index].name);
  //   txtjobrole = TextEditingController(text: employeeList[index].jobRole);
  //
  //
  // }

  void  savedata(int index){

      employeeList[index].id=txtid.text;
      employeeList[index].name=txtname.text;
      employeeList[index].jobRole=txtjobrole.text;
      employeeList.refresh();
  }



}
