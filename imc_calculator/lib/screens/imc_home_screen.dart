import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';

class ImcHome extends StatefulWidget {
  const ImcHome({super.key});

  @override
  State<ImcHome> createState() => _ImcHomeState();
}

class _ImcHomeState extends State<ImcHome> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        GenderSelector(),
        HeightSelector(),
        
      ],

    );
  }
}