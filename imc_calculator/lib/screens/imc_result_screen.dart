import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';
import 'package:imc_calculator/screens/imc_home_screen.dart';

class ImcResultScreen extends StatelessWidget {
  final String bmi;
  const ImcResultScreen({super.key,required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Result'),
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,),
      backgroundColor: AppColors.background,

      body: Column(

        children: [

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Your BMI is:',style: TextStyle(color: Colors.white, fontSize: 32) ,),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0,left: 16,right: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.backgroundComponent,
                ),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
              
                    Text('resultado',style: TextStyle(color: Colors.white, fontSize: 17),),
                    Text( bmi,style: TextStyle(color: Colors.white, fontSize: 17),),
                    Text('comentario',style: TextStyle(color: Colors.white, fontSize: 17),)
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),      
    );
  }
}