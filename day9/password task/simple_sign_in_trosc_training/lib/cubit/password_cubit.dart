import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/cubit/password_state.dart';


class PasswordCubit extends Cubit<PasswordState>{
  bool obscureText = false ;
  PasswordCubit() : super(ShowPassword());
  
  void changePasswordState (){

    if(obscureText == true){
      obscureText = !obscureText ;
      emit(ShowPassword());
    }

    else{
      obscureText = !obscureText ;
      emit(HidePassword());
    }
  }
}