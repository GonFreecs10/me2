import 'package:flutter/material.dart';
import 'package:me/food%20timing/breakfast.dart';
import 'package:me/food%20timing/food_management.dart';
import 'package:me/food%20timing/lunch.dart';
import 'package:me/food%20timing/supper.dart';

class Food extends StatelessWidget {
   Food({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = const[
    BreakFast(),
    Lunch(),
    Dinner()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food Manager'
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(selectedIndexNotifier.value == 0){
          print('add breakfast');
        }else if (selectedIndexNotifier.value == 1){print('add lunch');
        
        } else{print('add dinner');
        } 
        

      },
      child: Icon(Icons.food_bank),
      ),

      bottomNavigationBar: const FoodManagement(),
      body: SafeArea(child: ValueListenableBuilder(valueListenable: selectedIndexNotifier, builder: (BuildContext context,int updatedIndex,_){
        return _pages[updatedIndex];
      },
      ),
    ));
  }
}