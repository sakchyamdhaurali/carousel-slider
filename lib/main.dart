import 'package:flutter/material.dart';

import 'caro_slider.dart';

void main(){
  runApp(CarouselSlider());
}

class CarouselSlider extends StatelessWidget {
const CarouselSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CaroSlider(),


    );
  }
}