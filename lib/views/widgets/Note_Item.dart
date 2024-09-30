import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return EditNoteView();
        }) );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16 ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          ListTile(
            title: Text('Flutter tips',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16 ),
              child: Text('Build your career with tharwat samy',style:TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18)),
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,size: 30,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24,bottom: 12),
            child: Text('29/9/2024',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
          ),
        ],),
        ),
      ),
    );
  }
}
  