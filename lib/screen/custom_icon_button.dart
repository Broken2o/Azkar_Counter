import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key , required this.color , required this.color1 , required this.onPressed });
  // final IconData icon;required this.icon,
  final Color color;
  final Color color1;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon:  Icon( Icons.arrow_circle_up,
           size:40,
          color: color,

        ),
      style: IconButton.styleFrom(
        backgroundColor: color1,
      ) ,
    );
  }
}
