import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class CalculateButton extends StatefulWidget {
  final int weight;
  final double height;
  const CalculateButton({super.key,required this.height,required this.weight});

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  double get trueHeight => widget.height/100;
  double get bmi => widget.weight /(trueHeight * trueHeight);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0,right: 16,bottom: 30),
      child: ElevatedButton(onPressed: (){
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => ImcResultScreen(bmi: bmi.toString(),)

                              )
                              );

                            }, 
                            style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(16)))),
                                  child: Text('CALCULATE',style: TextStyles.primaryTextStyle)),
    );
  }
}