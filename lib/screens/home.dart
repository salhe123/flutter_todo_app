import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: _BuildAppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 20),
                      child: Text(
                        'All Todos',
                        style: TextStyle(
                          fontSize: 30,
                          color: dgrey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                    TodoItem(),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget searchBox() => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: dgrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: bgrey,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: 'search',
            hintStyle: TextStyle(
              color: bgrey,
              fontSize: 20,
            ),
          ),
        ),
      );
  AppBar _BuildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: primaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: accentColor,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              child: Image.asset('assets/images/muslim.jpg'),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
