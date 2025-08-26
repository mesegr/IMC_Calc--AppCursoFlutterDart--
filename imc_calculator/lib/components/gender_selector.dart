import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? genderSelected;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Expanded(
          child: GestureDetector(
            onTap: () {
              
              setState(() {
                
                genderSelected = "Male";

              });

            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16,bottom: 16,right: 8),
              child: Container(
                
                decoration: BoxDecoration(color: genderSelected == "Male" ?
                 AppColors.backgroundComponentSelected : AppColors.backgroundComponent,borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                  
                      Image.asset('assets/images/male.png',height: 100,),
                      SizedBox(height: 10),
                      Text('MALE', style: TextStyles.primaryTextStyle,)
                  
                    ],
                    
                  ),
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: GestureDetector(
            onTap: () {
              
              setState(() {
                
                genderSelected = "Female";

              });

            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 8,bottom: 16,right: 16),
              child: Container(
              
                decoration: BoxDecoration(color: genderSelected == "Female" ?
                 AppColors.backgroundComponentSelected : AppColors.backgroundComponent,borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                  
                      Image.asset('assets/images/female.png',height: 100,),
                      SizedBox(height: 10),
                      Text('FEMALE', style: TextStyles.primaryTextStyle,)
                  
                    ],
                  
                  ),
                ),
              ),
            ),
          ),
        )

      ],


    );
  }
}