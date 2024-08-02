import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;

class ImageWidget extends StatelessWidget{
  const ImageWidget ({super.key});

  @override
  Widget build (BuildContext context){
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.85,
      width: MediaQuery.of(context).size.width*1.0,
      child: const Image(
        image: AssetImage('assets/images/Azkar.jpg'),
      ),

    );
  }
}



