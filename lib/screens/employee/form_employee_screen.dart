import 'package:flutter/material.dart';
import 'package:flutter_app/model/employee.dart';
import 'package:flutter_app/widgets/custom_input_widget.dart';

// ignore: must_be_immutable
class FormEmployeeScreen extends StatefulWidget {
  Employee? employee;
  FormEmployeeScreen({super.key, this.employee});

  @override
  State<FormEmployeeScreen> createState() => _FormEmployeeScreenState();
}

class _FormEmployeeScreenState extends State<FormEmployeeScreen> {
  bool SelectGender = true;
  var employee = Employee();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  void initState() {
    setState(() {
      employee.id = 0;
      if (null != widget.employee?.name) {
        employee = widget.employee!;
        nameController.text = employee.name ?? "";
        phoneController.text = employee.phoneNumber ?? "";
        if (employee.gender != "Male") {
          SelectGender = false;
        }
      }
    });
    super.initState();
  }
  _onCreateEmployee(){
    if(nameController.text.isEmpty){
      return;
    }else if(phoneController.text.isEmpty){
      return;
    }else{
      employee.gender = SelectGender == true? "Male" : "Female";
      employee.name = nameController.text;
      employee.phoneNumber = phoneController.text;
      Navigator.pop(context, employee);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Form Employee", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomInputWidget(
              controller: nameController,
              prefixIcon: Icon(Icons.account_circle),
              labelText: "Employee name",
              hintText: "Employee name",
            ),
            const SizedBox(height: 20),
            CustomInputWidget(
              controller: phoneController,
              prefixIcon: Icon(Icons.phone),
              labelText: "Phone Number",
              hintText: "Phone Number",
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Text("Select gender"),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectGender = true;
                      });
                    },
                    child: Row(
                      children: [
                        SelectGender == true
                            ? Icon(Icons.check_circle, color: Colors.blue)
                            : Icon(Icons.check_circle),
                        SizedBox(width: 20),
                        Text("Male"),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectGender = false;
                      });
                    },
                    child: Row(
                      children: [
                        SelectGender == false
                            ? Icon(Icons.check_circle, color: Colors.blue)
                            : Icon(Icons.check_circle),
                        SizedBox(width: 20),
                        Text("Female"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                _onCreateEmployee();
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Center(
                  child: Text(
                      employee.name ==null ? "Create" : "Update",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
