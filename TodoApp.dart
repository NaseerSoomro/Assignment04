import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {

  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {

var output = " ";
List<dynamic> list = [1,2,3];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      title: Center(
      child:Row(
        children: [
          Text("TodoApp", style: TextStyle(color: Colors.black),),
          Container(
            child: Icon(Icons.add, color: Colors.black,),
            margin: EdgeInsets.only(left:150),
          )
        ],),
      ),
      ),

      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,index){
        return Container(
          height: 50,
          color: Colors.amber,
          margin: EdgeInsets.only(top:10),
          child: ListTile(
            title: Text("${list[index]}"),
            trailing: Container(
              width: 50,
              child: Row(
                children: [
                  GestureDetector(onTap:(){
                     showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Edit Items"),
            // hinttext: Text("add items"),
            content: TextField(
              onChanged: (value){
                output = value;
              }),

              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                  setState(() {
                    list.replaceRange(index, index+1, {output});
                  });
                }, child: Text("Edit")),
              ],
          );
        });
                  },
                  child: Icon(Icons.edit)),
                  GestureDetector(onTap:(){
                    setState(() {
                      list.removeAt(index);
                    });
                  },
                  child: Icon(Icons.delete)),
                ],
              ),
            ),
          ),
        );
      }),

      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Add Items"),
            // hinttext: Text("add items"),
            content: TextField(
              onChanged: (value){
                output = value;
              }),

              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                  setState(() {
                    list.add(output);
                  });
                }, child: Text("Add")),
              ],
          );
        });
      }, child:  Text("Add"),),
      );
  }
}