import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double HeightSelected = 150;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16, bottom: 16),
      child: Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.backgroundComponent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          
            children: [
          
              Text('HEIGHT',style: TextStyles.primaryTextStyle,),
              Text('${HeightSelected.toStringAsFixed(0)} cm', style: TextStyle(color: Colors.white, fontSize: 36),),
              Slider(value: HeightSelected, onChanged: (value){
          
                setState(() {
                  
                  HeightSelected = value;
          
                });
          
              },
              min: 120,
              max: 220,
              divisions: 100,
              label: '${HeightSelected.toStringAsFixed(0)} cm',
              activeColor: AppColors.primary,
              
              )
          
            ], 
          ),
        ),
      ),
    );
  }
}