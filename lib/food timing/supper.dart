import 'package:flutter/material.dart';

class Dinner extends StatelessWidget {
  const Dinner({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('Dinner food $index'),
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