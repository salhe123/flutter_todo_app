import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/model/Todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final OnToDoChanged;
  final OnDeleteItem;
  const TodoItem(
      {super.key,
      required this.todo,
      required this.OnToDoChanged,
      required this.OnDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: ListTile(
          onTap: () {
            OnToDoChanged(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: primaryColor,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: dgrey, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              color: Colors.red,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: () {
                OnDeleteItem(todo.id);
              },
            ),
          ),
        ));
  }
}
