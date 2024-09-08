import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/cubit/password_cubit.dart';
import 'package:login_ui/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => PasswordCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
       
          home:  Login() ,
        ),
    );
  }
}



