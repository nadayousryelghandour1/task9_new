import 'package:flutter/material.dart';

Widget myText ({
  required String text,
  required double fontSize,
  required int  side
}){

  if(side == 1){
       return Text(
    text,
    style: TextStyle(
    fontSize: fontSize,
    color: const Color.fromRGBO(233, 232, 222,541),

    ),
  );
}
 else{
  return Text(
    text,
    style: TextStyle(
    fontSize: fontSize,
    color: const Color.fromRGBO(107, 102, 88,541)
    ),
  );
 }
      
  

}