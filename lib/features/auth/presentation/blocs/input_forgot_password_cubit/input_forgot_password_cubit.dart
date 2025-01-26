import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';

class InputForgotPasswordCubit extends Cubit<int> {
  InputForgotPasswordCubit(super.initialState);

  String? countryCode;

  void setCountryCode(CountryCode country) {
    countryCode = country.dialCode;
    emit(country.hashCode);
  }
}
