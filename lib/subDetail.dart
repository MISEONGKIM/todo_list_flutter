import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubDetail extends StatefulWidget {
  const SubDetail({Key? key}) : super(key: key);

  @override 
  State<StatefulWidget> createState() => _SubDetail();
}


class _SubDetail extends State<SubDetail> {
  List<String> todoList = [];

  @override
  void initState() {
    super.initState();
    todoList.add('당근 사오기');
    todoList.add('약 사오기');
    todoList.add('청소히기');
    todoList.add('부모님께 전화하기');
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Detail Example'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              child: Text(todoList[index], style: TextStyle(fontSize: 30),),
              onTap: () {
                Navigator.of(context).pushNamed('/third', arguments: todoList[index]);
              },
            ),
          );
        },
        itemCount: todoList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await Navigator.of(context).pushNamed('/second'); //반환값 저장
          setState(() {
            todoList.add(result as String); //리스트에 추가
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}