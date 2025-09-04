import 'package:flutter/material.dart';
import 'package:imc_calculator/components/calculate_buton.dart';
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
  double selectedHeight = 170;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        GenderSelector(),
        HeightSelector(heightSelected: selectedHeight,setHeight: (value) {
            setState(() {
                  
                  selectedHeight = value;
          
                });
        },),

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
        ),
        Spacer(),
        SizedBox(height: 88,width: double.infinity,child: CalculateButton(height: selectedHeight,weight: selectedWeight))
      ],
    );
  }
}