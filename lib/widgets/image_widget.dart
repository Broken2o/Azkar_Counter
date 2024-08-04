import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;

class ImageWidget extends StatelessWidget{
  const ImageWidget ({super.key});

  @override
  Widget build (BuildContext context){
    return SizedBox(
      child: const Image(
        width: double.infinity,
        image: AssetImage('assets/images/Azkar.jpg'),
      ),
     //


    );
  }
}



