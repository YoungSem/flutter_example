 import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
   const HomeTile({
     super.key,
     required this.item
   });

   final String item;

   @override
   Widget build(BuildContext context) {
     return ListTile(
       title: Text(item),
       trailing: IconButton(
         onPressed: (){
           setState(() {
             todoList.removeAt(index);
           });
         },
         icon: const Icon(
           Icons.delete_outline_sharp,
           color: Colors.teal,
         ),
       ),
     );
   }
 }
