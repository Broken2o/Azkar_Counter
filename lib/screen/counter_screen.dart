import 'package:ff/screen/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'custom_wedget.dart';
class CounterScreen extends StatefulWidget{
  const CounterScreen ({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}


class _CounterScreenState extends State<CounterScreen> {
  int c1=0 , c2=0,c3=0,c4=0,c5=0,c6=0,c7=0;


  @override

  Widget build (BuildContext context) {

    return  Scaffold (
        appBar: AppBar(

          backgroundColor: Colors.blueGrey.shade100,
          foregroundColor: Colors.blueGrey.shade800,
          leading: const Icon(Icons.home),
          centerTitle: true ,
          title: const Text("سُبْحَتِي" ,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),

        body:

        Center(
            child: Container(
                decoration:  BoxDecoration(

                    gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.brown.shade100 ,
                      Colors.brown.shade300,
                      Colors.brown.shade500,
                      Colors.brown.shade700,


                       ],
                     )
                ),
                child:
                  Column(
                      children:[
                        const SizedBox(height: 20,),
                        const Text(
                          'وَذَكِّرْ فَإِنَّ الذِّكْرَى تَنْفَعُ الْمُؤْمِنِينَ',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                            // fontFamily: ,
                          ),

                        ),
                        const SizedBox(height: 20,),
                        Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              CustomContainer(color: Colors.white70, color1: Colors.blueAccent.shade700, string: '$c1',wid: 30, heig: 40,),
                               CustomContainer(color: Colors.white70, color1: Colors.blueAccent.shade700, string: 'بسم الله',wid: 180, heig: 60,),
                              CustomIconButton(
                                color: Colors.blueAccent.shade700,
                                onPressed: (){
                                  c1++;
                                  setState(() {});
                                }, color1: Colors.white70,

                              ),
                            ]),
                        const SizedBox(height: 10,),


                        Row(

                                mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                   CustomContainer(color: Colors.white70, color1: Colors.blueAccent.shade400, string: '$c2',wid: 30, heig: 40,),
                                   CustomContainer(color: Colors.white70, color1: Colors.blueAccent.shade400, string: 'الحمد لله',wid: 180, heig: 60,),
                                  CustomIconButton(
                                    // icon:Icons.arrow_circle_up ,
                                    color: Colors.blueAccent.shade400,
                                    onPressed: (){
                                      c2++;
                                      setState(() {});
                                      }, color1: Colors.white70,

                                  ),
                                ]),
                        const SizedBox(height: 10,),

                        Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              CustomContainer(color: Colors.white70, color1: Colors.blueAccent.shade200, string: '$c3',wid: 30, heig: 40,),
                               CustomContainer(color: Colors.white70, color1: Colors.blueAccent.shade200, string: 'سبحان الله',wid: 180, heig: 60,),
                              CustomIconButton(
                                // icon:Icons.arrow_circle_up ,
                                color: Colors.blueAccent.shade200,
                                onPressed: (){
                                  c3++;
                                  setState(() {});
                                }, color1: Colors.white70,

                              ),
                            ]),
                        const SizedBox(height: 10,),

                        Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              CustomContainer(color: Colors.white70, color1: Colors.purple.shade200, string: '$c4',wid: 30, heig: 40,),
                               CustomContainer(color: Colors.white70, color1:Colors.blueAccent.shade100, string: 'لا إله إلا الله',wid: 180, heig: 60,),
                              CustomIconButton(
                                color: Colors.blueAccent.shade100,
                                onPressed: (){
                                  c4++;
                                  setState(() {});
                                }, color1: Colors.white70,

                              ),
                            ]),
                        const SizedBox(height: 10,),


                        Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              CustomContainer(color: Colors.white70, color1: Colors.purpleAccent.shade200, string: '$c5',wid: 30, heig: 40,),
                               CustomContainer(color: Colors.white70, color1: Colors.purpleAccent.shade200, string: 'الله أكبر',wid: 180, heig: 60,),
                              CustomIconButton(
                                color: Colors.purpleAccent.shade200,
                                onPressed: (){
                                  c5++;
                                  setState(() {});
                                }, color1: Colors.white70,

                              ),
                            ]),
                        const SizedBox(height: 10,),


                        Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              CustomContainer(color: Colors.white70, color1: Colors.purpleAccent.shade400, string: '$c6',wid: 30, heig: 40,),
                               CustomContainer(color: Colors.white70, color1: Colors.purpleAccent.shade400, string: 'أستغفر الله',wid: 180, heig: 60,),
                              CustomIconButton(
                                color: Colors.purpleAccent.shade400,
                                onPressed: (){
                                  c6++;
                                  setState(() {});
                                }, color1: Colors.white70,

                              ),
                            ]),
                        const SizedBox(height: 10,),

                        Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              CustomContainer(color: Colors.white70, color1: Colors.purpleAccent.shade700, string: '$c7', wid: 30, heig: 40,),
                               CustomContainer(color: Colors.white70, color1: Colors.purpleAccent.shade700 , string: 'لا حول ولا قوة إلا بالله ', wid: 180, heig: 60,),
                              CustomIconButton(
                                color: Colors.purpleAccent.shade700,
                                onPressed: (){
                                  c7++;
                                  setState(() {});
                                }, color1: Colors.white70,

                              ),
                            ]),
                        // SizedBox(height: 20,),

                      ],)


                      ),

    ));
  }
}
