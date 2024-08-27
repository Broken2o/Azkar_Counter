import 'package:flutter/material.dart';
import 'package:Azkar_Counter/cubits/counter_cubit/counter_cubit.dart';
import '../models/counter_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Azkar_Counter/cubits/counter_cubit/counter_states.dart';

class ListRow extends StatefulWidget {
  const ListRow({super.key, required this.counteritem});
  final CounterItem counteritem;
  @override
  State<ListRow> createState() => _ListRowState();}

class _ListRowState extends State<ListRow> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder <CounterCubit,CounterStates>(
          builder: (BuildContext context, CounterStates state) {
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
                        '${CounterCubit.get(context).counter}',
                        style: const TextStyle(
                          fontSize: 20,
                        ),),),),
                  const SizedBox(width: 20,),
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
                        onPressed: () {
                          CounterCubit.get(context).plus();
                        },

                        icon: const Icon(Icons.arrow_circle_up,
                          size: 40,
                        ),
                      )
                  ),
                ]
            );
          }
      ),
    );
  }
}




