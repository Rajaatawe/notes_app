import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(16 ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      ListTile(
        title: Text('Flutter tips',style: TextStyle(color: Colors.black),),
        subtitle: Text('Build your career with tharwat samy',style:TextStyle(color: Colors.black)),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,)),
      ),
      Text('29/9/2024',style: TextStyle(color: Colors.black),),
    ],),
    );
  }
}
  