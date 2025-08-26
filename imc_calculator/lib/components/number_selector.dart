import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;
  final Function() onIncrement;
  final Function() onDecrement;
  const NumberSelector({super.key, required this.title, required this.value,required this.onIncrement, required this.onDecrement});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.backgroundComponent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        
          children: [
        
            Text(widget.title, style: TextStyles.primaryTextStyle,),
            Text(widget.value.toString(),style: TextStyle(color: Colors.white, fontSize: 36),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: () {widget.onDecrement();}, shape: CircleBorder(),backgroundColor: AppColors.primary,child: Icon(Icons.remove,color: Colors.white),),
                SizedBox(width: 8,),
                FloatingActionButton(onPressed: () {widget.onIncrement();}, shape: CircleBorder(),backgroundColor: AppColors.primary,child: Icon(Icons.add,color: Colors.white),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}