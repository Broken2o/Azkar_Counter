import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key, required this.onTap});

  final Function() onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: const BoxDecoration(

              color: Color(0xff06151C)
          ),
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height*0.08,

          child:
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Icon(
                  Icons.favorite,
                  color: Colors.blue.shade700,
                  size: 40,
                ),
                Text(
                  "سُبْحَتِي" ,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple.shade300,
                    fontFamily: 'cross origin',
                  ),
                ),
              ]
          )
      ),
    );}}