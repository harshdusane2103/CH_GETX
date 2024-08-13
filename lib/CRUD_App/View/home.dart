import 'package:chapter_getx_ui/CRUD_App/Controller/controllerCrud.dart';
import 'package:chapter_getx_ui/CRUD_App/Modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCRUDScreen extends StatelessWidget {
  const HomeCRUDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeeController controller = Get.put(EmployeeController());
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_circle_outlined,
          color: Colors.purple,
          size: 30,
        ),
        centerTitle: true,
        title: Text('Employee Data'),
      ),
      body: Obx(
            () =>
            ListView.builder(
              itemCount: controller.employeeList.length,
              itemBuilder: (context, index) =>
                  ListTile(
                    leading: Text(controller.employeeList[index].id.toString()),
                    title: Text(controller.employeeList[index].name),
                    subtitle: Text(controller.employeeList[index].jobRole),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {

                            showDialog(
                                context: context,
                                builder: (context) =>
                                    AlertDialog(
                                      title: const Text('Update details'),
                                      actions: [
                                      TextFormField(
                                      controller: controller.txtid,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 1)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 3)),
                                          hintText: ("Enter Id")),
                                    ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: controller.txtname,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 3)),
                                    hintText: ("Enter Name "),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: controller.txtjobrole,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 3)),
                                    hintText: ("Enter Jobrole "),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        controller.savedata(index);
                                        Navigator.pop(context);
                                      },

                                  child: Text(
                                  'Submit',
                                  style: TextStyle(color: Colors.deepPurple),
                                )),

                                ) ]
                            ,
                            )
                            ,
                            );
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.removeEmployee(index);

                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) =>
                  AlertDialog(
                    title: Text('Enter Employee Detail'),
                    actions: [
                      TextFormField(
                        controller: controller.txtid,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 3)),
                            hintText: ("Enter Id")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: controller.txtname,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 3)),
                          hintText: ("Enter Name "),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: controller.txtjobrole,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 3)),
                          hintText: ("Enter Jobrole "),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {

                            EmployeeModal employee = EmployeeModal(
                                id: controller.txtid.text,
                                name: controller.txtname.text,
                                jobRole: controller.txtjobrole.text);

                            controller.addEmployee(employee);
                            Navigator.pop(context);
                          },

                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.deepPurple),
                          )
                      )
                    ],
                  ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


