import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/explain.dart';


class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(226, 222, 210, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: 
          AssetImage('assets/background.png'),
          height: 500,
           width: 600
          ),

          SizedBox(
            height: 70,
            width: 260,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,MaterialPageRoute(builder: (context){
                    return const Explain();
                }));             
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(176, 142, 115, 1),
                elevation: 20,
                
              ),
              child:const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 32,
                  color: Color.fromRGBO(233, 232, 222, 1)
                  )
              ),
              
              
              ),
          )
        ]
      ),
    );
  }
}