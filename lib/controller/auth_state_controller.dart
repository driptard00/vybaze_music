import 'package:get/get.dart';

class AuthStateController extends GetxController {

  String _email = "";
  String _password = "";
  String _firstName = "";
  String _lastName = "";
  String _phoneNumber = "";
  String _username = "";
  bool _isLoading = false;
  bool _hidePassword = true;
  bool _checkBoxValue = false;


  bool get isLoading => _isLoading;
  bool get hidePassword => _hidePassword;
  String get email => _email;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get password => _password;
  String get username => _username;
  String get phoneNumber => _phoneNumber;
  bool get checkBoxValue => _checkBoxValue;


  updateEmail(value) {
    _email = value;
    update();
  }

  updatePassword(value) {
    _password = value;
    update();
  }

  updateFirstName(value) {
    _firstName = value;
    update();
  }

  updateLastName(value) {
    _lastName = value;
    update();
  }

  updatePhoneNumbervalue(value) {
    _phoneNumber = value;
    update();
  }

  updateCheckBox( value) {
    _checkBoxValue = value;
    update();
  }

  togglePassword() {
    _hidePassword = !_hidePassword;
    update();
  }

  updateIsLoading(bool value) {
    _isLoading = value;
    update();
  }

  updateUserName(value) {
    _username = value;
    update();
  }
}