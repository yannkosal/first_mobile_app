import 'package:flutter/material.dart';
import 'package:flutter_app/model/employee.dart';
import 'package:flutter_app/screens/employee/form_employee_screen.dart';
import 'package:flutter_app/screens/list_view_detail_screen.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<Employee> listEmployee = [];

  @override
  void initState() {
    _getAllEmployee();
    super.initState();
  }

  _getAllEmployee() {
    listEmployee.add(
      Employee(
        id: 1,
        name: "Sok Dara",
        gender: "Male",
        phoneNumber: "0123456789",
      ),
    );
    listEmployee.add(
      Employee(
        id: 2,
        name: "Sok Heng",
        gender: "Female",
        phoneNumber: "0123456789",
      ),
    );
    listEmployee.add(
      Employee(
        id: 3,
        name: "Sok Sidanet",
        gender: "Male",
        phoneNumber: "0987654321",
      ),
    );
    listEmployee.add(
      Employee(
        id: 1,
        name: "Sok Sovan",
        gender: "Male",
        phoneNumber: "0123456789",
      ),
    );
    listEmployee.add(
      Employee(id: 1, name: "Sok Kha", gender: "Male", phoneNumber: "02194798"),
    );
  }

  _operationEmployee(Employee employee) {
    if (employee.id == 0) {
      setState(() {
        employee.id = listEmployee.length + 1;
        listEmployee.add(employee);
      });
    } else {
      int index = listEmployee.indexWhere(
        (employee) => employee.id == employee.id,
      );
      setState(() {
        listEmployee[index] = employee;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("List Employee", style: TextStyle(color: Colors.white)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormEmployeeScreen();
              },
            ),
          ).then((onValue) {
            _operationEmployee(onValue);
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: listEmployee.length,
        itemBuilder: (BuildContext context, index) {
          var employee = listEmployee[index];
          return Container(
            margin: EdgeInsets.only(top: 10, left: 16, right: 16),
            decoration: BoxDecoration(color: Colors.black12),
            width: double.infinity,
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FormEmployeeScreen(employee: employee);
                    },
                  ),
                ).then((onValue) {
                  if (null != onValue.name) {
                    _operationEmployee(onValue);
                  }
                });
              },
              title: Text(
                "${employee.name}",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text("${employee.phoneNumber}"),
              leading: Icon(Icons.account_circle),
              trailing: InkWell(
                onTap: (){
                  setState(() {
                    listEmployee.removeAt(index);
                  });
                },
                child: Icon(Icons.delete, color: Colors.red,),
              ),
            ),
          );
        },
      ),
    );
  }
}
