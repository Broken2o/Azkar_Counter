import 'package:flutter/material.dart';
import '../models/counter_item.dart';
// import 'package:../models/counter_item.dart';

  class ListRow extends StatefulWidget {
  const ListRow({super.key, required this.counteritem});
  final CounterItem counteritem;
  @override
  State<ListRow> createState() => _ListRowState();}

  class _ListRowState extends State<ListRow> {
  @override
  Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: widget.counteritem.color,),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${widget.counteritem.count}',
                    style: const TextStyle(
                      fontSize: 20,
                      // color: widget.counteritem.color1 ,
                    ),),),),
                SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: widget.counteritem.color),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        widget.counteritem.text,
                        style: const TextStyle(
                          fontSize: 20,
                          //
                          ),
                        ),),),
                const SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: widget.counteritem.color,),
                  child: IconButton(
                  onPressed: (){
                    widget.counteritem.count++;
                    setState(() {});},

                    icon:  Icon( Icons.arrow_circle_up,
                      size:40,
                    ),
                  )
                ),
                ]
          );
  }
  }




