import 'package:flutter/material.dart';

class ListTodo extends StatefulWidget {
  const ListTodo({super.key, required this.todoList});

  final List<String> todoList;

  @override
  State<ListTodo> createState() => _ListTodoState();
}

class _ListTodoState extends State<ListTodo> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            widget.todoList[index],
          ),
          onLongPress: () {
            setState(() {
              widget.todoList.removeAt(index);
            });
          },
        );
      },
      itemCount: widget.todoList.length,
    );
  }
}
