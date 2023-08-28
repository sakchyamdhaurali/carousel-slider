import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
class CaroSlider extends StatefulWidget {
  const CaroSlider({Key? key}) : super(key: key);

  @override
  State<CaroSlider> createState() => _CaroSliderState();
}

class _CaroSliderState extends State<CaroSlider> {
     static const List<String> sampleImages = [
      "images/4.jpg",
     
      "images/3.jpg",
      "images/1.jpg",
      "images/2.jpg",

   


  ];

  final color = [
    Colors.red,
    Colors.amber,
    Colors.teal,
    Colors.blue,
    Colors.blueGrey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider'),
        backgroundColor: color[0],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
          
            //own code for slider
          

            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                itemCount: sampleImages .length,
                controller: PageController(
                  viewportFraction: 0.7,
                  initialPage: 2,
                ),
                itemBuilder: (context,index){
                return Container(
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.all(8),
decoration: BoxDecoration(
                  color: color[index],
        borderRadius: BorderRadius.circular(30),
),                  
child: Image.asset(sampleImages[index],
fit: BoxFit.cover,),
                );
              } ),
            ),
           
       
       SizedBox(height: 30,),
       
  //imported slider

  FanCarouselImageSlider(
    sliderHeight: 350,
            imagesLink: sampleImages,
            imageFitMode: BoxFit.cover,
            sliderWidth: 400,
            isAssets: true,

          )
          ],
        ),
      ),
    );
  }
}
