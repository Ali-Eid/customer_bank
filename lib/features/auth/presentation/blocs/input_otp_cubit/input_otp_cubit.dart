import 'dart:math';

import 'package:bloc/bloc.dart';

class InputOtpCubit extends Cubit<int> {
  InputOtpCubit(super.initialState);

  String otpCode = "";
  void setOtpCode(String code) {
    otpCode = code;
    emit(Random().nextInt(100));
  }
}
