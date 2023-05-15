import 'package:flutter/material.dart';

class Lunch extends StatelessWidget {
  const Lunch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('Lunch food $index'),
            trailing: IconButton(onPressed: (){},
            icon: Icon(Icons.delete),),
            
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10,);

      },itemCount: 20,
    );
  }
}