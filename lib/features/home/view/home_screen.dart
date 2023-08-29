import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {

  String _userToDo = '';
  List todoList = [];

  @override
  void initState() {
    super.initState();
    todoList.addAll(['Позвонить бабушке', 'Выпить чай', 'Покушать кашку']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text('Список дел'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index){
            return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                child: HomeTile(),
              ),
              onDismissed: (direction){
                setState(() {
                  todoList.removeAt(index);
                });
              },
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text('Новое дело'),
              content: TextField(
                onChanged: (String value){
                  _userToDo = value;
                },
              ),
              actions: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        todoList.add(_userToDo);
                      });

                      Navigator.of(context).pop();
                    },
                    child: Text('Добавить'))
              ],
            );
          });
        },
      ),
    );
  }
}