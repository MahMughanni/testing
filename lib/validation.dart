class Validation {


  static String emailValidation(String value) {
    String msg = '';
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (value.trim().isEmpty) {
      msg = 'Please Enter Valid Email';
    } else if (!emailRegExp.hasMatch(value)) {
      msg = 'Please Enter Valid Email';
    }
    return msg;
  }
  static String passWordValidation(String value) {
    String msg = '';

    // Check for minimum length
    if (value.length < 8) {
      msg = 'Password must be at least 8 characters long.';
      return msg;
    }

    // Check for at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      msg = 'Password must contain at least one uppercase letter.';
      return msg;
    }

    // Check for at least one lowercase letter
    if (!value.contains(RegExp(r'[a-z]'))) {
      msg = 'Password must contain at least one lowercase letter.';
      return msg;
    }

    // Check for at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      msg = 'Password must contain at least one digit.';
      return msg;
    }

    // Check for at least one special character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      msg = 'Password must contain at least one special character.';
      return msg;
    }

    // If all validations pass, return an empty string
    return msg;
  }


}
