import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          leading: Icon(
            Icons.check_box,
            color: primaryColor,
          ),
          title: Text(
            'check mail',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              decoration: TextDecoration.lineThrough,
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
              onPressed: () {},
            ),
          ),
        ));
  }
}
