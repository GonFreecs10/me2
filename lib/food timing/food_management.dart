import 'package:flutter/material.dart';
import 'package:me/home.dart';
class FoodManagement extends StatelessWidget {
  const FoodManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Food.selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget?_) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          onTap: (newIndex) {
          Food.selectedIndexNotifier.value = newIndex;

          
        },
          items: const[
          
          BottomNavigationBarItem(icon: Icon(Icons.breakfast_dining),
          label: 'BreakFast'),
        BottomNavigationBarItem(icon: Icon(Icons.lunch_dining),
        label: 'lunch'),
        BottomNavigationBarItem(icon: Icon(Icons.dinner_dining),
        label: 'dinner')

        ]
        );
        


        
      },
      
    );
  }
}