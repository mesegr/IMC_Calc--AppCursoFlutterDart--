import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double heightSelected;
  final Function(double value) setHeight;
  const HeightSelector({super.key,required this.heightSelected,required this.setHeight});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {

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
          padding: const EdgeInsets.all(12.0),
          child: Column(
          
            children: [
          
              Text('HEIGHT',style: TextStyles.primaryTextStyle,),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text('${widget.heightSelected.toStringAsFixed(0)} cm', style: TextStyle(color: Colors.white, fontSize: 36),),
              ),
              Slider(value: widget.heightSelected, onChanged: (value){

                setState(() {

                  widget.setHeight(value);

                });
          
              },
              min: 120,
              max: 220,
              divisions: 100,
              label: '${widget.heightSelected.toStringAsFixed(0)} cm',
              activeColor: AppColors.primary,
              
              )
          
            ], 
          ),
        ),
      ),
    );
  }
}