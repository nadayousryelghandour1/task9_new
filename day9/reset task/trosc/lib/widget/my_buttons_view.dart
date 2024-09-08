import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/my_elevated_button.dart';
import 'package:flutter_application_1/widget/my_sized_box.dart';
import 'package:flutter_application_1/widget/my_text.dart';

Widget myButtonView({
  required String teamName,
  required int side,
}){
  return Container(
                          
                         
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    myText(text: 'Add', fontSize: 20,side: side),
                                    myElevatedButton(teamName: teamName, points: 1,text: '1',side: side,op:'Add'),

                                     myElevatedButton(teamName: teamName, points: 2,text: '2',side:side,op:'Add'),

                                     myElevatedButton(teamName: teamName, points: 3,text: '3',side:side,op:'Add'),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    myText(text: 'Points', fontSize: 20,side: side),
                                    mySizesBox(height: 12),
                                    myText(text: '1', fontSize: 25, side:side),
                                    mySizesBox(height: 12),
                                    myText(text: '2', fontSize: 25, side:side),
                                    mySizesBox(height: 12),
                                    myText(text: '3', fontSize: 25, side:side)
                                  ],
                                ),
                              ),
                              
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    myText(text: 'Sub', fontSize: 20,side: side),
                                    myElevatedButton(teamName: teamName, points: 1,text: '1',side:side,op:'Sub'),

                                     myElevatedButton(teamName: teamName, points: 2,text: '2',side:side,op:'Sub'),

                                     myElevatedButton(teamName: teamName, points: 3,text: '3',side:side,op:'Sub'),
                                  ],
                                ),
                              )
                            ],
                          ),
                          
                        );
}