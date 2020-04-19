class Validators {
  static final RegExp _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static final RegExp _passwordRegex = RegExp(
      r"^(?=.*\d)(?=.*[~!@#$%^&*()_\-+=|\\{}[\]:;<>?/])(?=.*[A-Z])(?=.*[a-z])\S{6,256}$");
  static email(String input) => _emailRegex.hasMatch(input);
  static password(String input) => _passwordRegex.hasMatch(input);
  static confirmPassword(String input1, String input2) => input1 == input2;
  static username(String input) => input != null && input.length > 0;
}
