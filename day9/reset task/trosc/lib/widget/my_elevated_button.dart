import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_application_1/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
int teamApoints = 0;
int teamBpoints = 0;

Widget myElevatedButton({
  String ? teamName,
  int ? points ,
  required String text ,
  int side = 0,
  Color ? backgroundColor,
  Color ? textColor,
  String ? op ,
  
}){
  return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        if (text == 'Reset'){
                return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: const Color.fromRGBO(47, 46, 44, 1),
                  minimumSize: const Size(200, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                                .resetCounter();
                },
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(226, 222, 210, 1),
                  ),
                ),
              );
        }

        else{
          if(side==1){
            backgroundColor= const Color.fromRGBO(233, 232, 222,541);
            textColor = const Color.fromRGBO(107, 102, 88,541);
          }
          else{
            backgroundColor= const Color.fromRGBO(107, 102, 88,541);
            textColor = const Color.fromRGBO(233, 232, 222,541);
          }

          if(op == 'Add'){
            return MaterialButton(
            minWidth: 10,
          color: backgroundColor,
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
            .teamAIncrement(team: teamName!, buttonNum: points!);
          },
          child:  Icon(
            Icons.add,
            color: textColor,
            size: 20
          )
            );
          }
          else {
            return MaterialButton(
            minWidth: 10,
          color: backgroundColor,
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
            .teamADecrement(team: teamName!, buttonNum: points!);
          },
          child:  Icon(
            Icons.remove_circle,
            color: textColor,
            size: 20
          )
                  );
          }
          
        }
        

      },
      listener: (context, state) {
        if (State is CounterAIncrement) {
          teamApoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else if(State is CounterBIncrement) {
          teamBpoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
        else if (State is CounterReset){
          teamApoints = 0;
          teamBpoints = 0;
        }

      },
  );
}