import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';

class ImcHome extends StatefulWidget {
  const ImcHome({super.key});

  @override
  State<ImcHome> createState() => _ImcHomeState();
}

class _ImcHomeState extends State<ImcHome> {
  int selectedAge = 20;
  int selectedWeight = 70;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        GenderSelector(),
        HeightSelector(),

        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Row(
          
            children: [
          
              Expanded(child: NumberSelector(title: 'AGE', value: selectedAge, 
              onIncrement:() {
                
                setState(() {

                  selectedAge++;
                  
                });

              },onDecrement: () {
                
                setState(() {
                  
                  selectedAge--;

                });

              },)),
              SizedBox(width: 16,),
              Expanded(child: NumberSelector(title: 'WEIGHT', value: selectedWeight, 
              onIncrement:() {
                
                setState(() {

                  selectedWeight++;
                  
                });

              },onDecrement: () {
                
                setState(() {
                  
                  selectedWeight--;

                });

              },)),
          
            ],
          ),
        )
      ],
    );
  }
}