import 'package:flutter/material.dart';
import 'package:flutter_application_to_do_list/components/todo_form_field.dart';
import 'package:flutter_application_to_do_list/components/todo_list.dart';

import '../components/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controllerTextFormField =
      TextEditingController();

  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle:
            const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
        backgroundColor: Colors.pink,
        title: const Center(
          child: Text('Todo List'),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            FormToDo(controller: _controllerTextFormField),
            Flexible(
              child: ListTodo(todoList: todoList),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Button(
            icon: Icons.add,
            onPressed: () {
              if (_controllerTextFormField.text.isNotEmpty) {
                setState(() {
                  todoList.add(_controllerTextFormField.text);
                });
                _controllerTextFormField.clear();
              }
            },
          ),
          Button(
            icon: Icons.remove,
            onPressed: () {
              setState(() {
                todoList = [];
              });
              _controllerTextFormField.clear();
            },
          ),
        ],
      ),
    );
  }
}
