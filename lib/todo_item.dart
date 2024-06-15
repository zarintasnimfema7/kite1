import 'package:kite/todo_model.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  final ToDoModel  todo;
  final onToDoChange;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo,required this.onToDoChange,required this.onDeleteItem}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: (){
          onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        tileColor: Colors.pink.shade100,
        leading: Icon(
          todo.isDone?Icons.check_box:Icons.check_box_outline_blank,
          color: Colors.pink.shade900,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: todo.isDone?TextDecoration.lineThrough:null,
          ),),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.pink.shade900,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 22,
            icon: Icon(Icons.delete),
            onPressed: (){
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}