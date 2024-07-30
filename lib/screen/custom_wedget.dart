import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key , required this.color , required this.color1 , required this.string , required this.wid , required this.heig});
  final Color color;
  final Color color1;
  final String string;
  final double wid;
  final double heig;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(75),
        color: color,
      ),
      height: heig, width:wid ,

      child:  Center(
        child: Text( string ,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: color1,
            fontSize: 20,

          ),
        ),
      ),);
  }
}
