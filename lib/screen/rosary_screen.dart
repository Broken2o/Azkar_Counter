
import 'package:flutter/material.dart';
import '../constants/counter_list.dart';
import '../widgets/azkar_widget.dart';


class RosaryScreen extends StatelessWidget {
  const RosaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff06151C),
        foregroundColor: Colors.blueGrey.shade600,
        centerTitle: true,
        title: const Text("سُبْحَتِي" ,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.brown.shade300,
                Colors.brown.shade700,
              ],
            )),
        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children:[
              const Text(
                'وَذَكِّرْ فَإِنَّ الذِّكْرَى تَنْفَعُ الْمُؤْمِنِينَ',
                style: TextStyle(
                  color: Color(0xff06151C),
                  fontSize: 30,
                ),

              ),
              const SizedBox(height: 20,),
              ListView.separated(

                shrinkWrap: true,
                itemBuilder: (context,index ){ return ListRow(counteritem: counterList[index] );},
                separatorBuilder: (context,index) => const SizedBox(height: 20,) ,
                itemCount: counterList.length,
              ),],),
        ),
      ),
    );
  }
}
//
//