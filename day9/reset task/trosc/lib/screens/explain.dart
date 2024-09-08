import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_application_1/cubit/counter_state.dart';
import 'package:flutter_application_1/widget/my_buttons_view.dart';
import 'package:flutter_application_1/widget/my_elevated_button.dart';
import 'package:flutter_application_1/widget/my_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Explain extends StatelessWidget {

  const Explain({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(226, 222, 210, 1),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(151, 145, 129, 1),
            title: Text(
              'Points Counter',
              style: GoogleFonts.lobster(
                fontSize: 22,
                color: const Color.fromRGBO(233, 232, 222, 1),
                fontWeight: FontWeight.bold,
               )
              
            ),
            centerTitle: true,
          ),
        body: Stack(
            children: [
              Row(
                children: [
                  Container(
                    width: 205.7,
                    color: const Color.fromRGBO(233, 232, 222, 1),
                  ),
                  
                  Container(
                    width: 205.7,
                    color: const Color.fromRGBO(107, 102, 88, 1),
                  )
                ]
              ),
              Center(
                child:SizedBox(
                  width: 430,
                  height: 740,
                  child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        myText(text: 'Team A', fontSize: 32,side: 0),
                        myText(text: '${BlocProvider.of<CounterCubit>(context).teamAPoints}', fontSize: 115,side: 0),
                        myButtonView(teamName: 'A',side: 0),
                      ],
                    ),
                  ),
                  
                  const SizedBox(
                    height: 600,
                    width: 10,
                    
                  ),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        myText(text: 'Team B', fontSize: 32,side: 1),
                        myText(text: '${BlocProvider.of<CounterCubit>(context).teamBPoints}', fontSize: 115,side: 1),
                        myButtonView(teamName: 'B',side: 1),
                      ],
                    ),
                  ),
                ],
              ),

              //task
              myElevatedButton(text: 'Reset'),
            ],
          ),
                ) 
              )
        ]
       )
        );
      }, listener: (BuildContext context, CounterState state) {  },
    );
  }
}