import 'package:flutter/material.dart';
import '../constants/counter_list.dart';
import '../widgets/azkar_widget.dart';
import '../widgets/image_widget.dart';
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade50,
        foregroundColor: Colors.blueGrey.shade600,
        leading: const Icon(Icons.home),
        centerTitle: true,
        title: const Text("سُبْحَتِي" ,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Container(
          child:  Column(
            children: [
              Expanded(child: ImageWidget())
              ,
                SizedBox(
                  width: double.infinity,
                  height: 40,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=> const MYList()));
                  },

                  child:
                  Wrap(
                    children: <Widget>[
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

                    ],
                  ),
                ),
              ),


            ],
          )
      ),
    );
  }
}

class MYList extends StatelessWidget {
  const MYList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade100,
        foregroundColor: Colors.grey.shade700,
        centerTitle: true,
        title: const Text("سُبْحَتِي",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
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
                  color: Colors.black45,
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
