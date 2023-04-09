

mixin FormValidators{

  String? validateSupportController(String? value) {
    if (value!.trim().isEmpty) return 'message cannot be empty';

    return null;
  }

  String? validateLoginPass(String? value) {
    if (value!.trim().isEmpty) return 'field cannot be empty';

    return null;
  }

  String? validateComment(String? value) {
    if (value!.trim().isEmpty) return 'field cannot be empty';

    return null;
  }

  /*String? validatePassword(String? value) {
    if (value!.trim().isEmpty) {
      return 'Password can not be empty';
    } else if (RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~.?%&({)}[\/\]^;:",_\\-\\=+><|]).{8,}$')
        .hasMatch(value) ==
        false) {
      return 'The password entered is not valid';
    }

    return null;
  }*/

  String? validatePassword(String? value) {
    if (value!.trim().isEmpty) {
      return 'Password can not be empty';
    } else if (value.trim().length < 8) {
      return 'Password must not be less than 8 characters';
    }
    return null;
  }

  String? validateAmount(String? value) {
    if (value!.trim().isEmpty) {
      return 'Amount can not be empty';
    } else if (double.parse(value.toString()) < 1.0) {
      return 'Input a valid Amount';
    }

    return null;
  }

  String? validateFullName(String? value) {
    if (value!.trim().isEmpty) {
      return 'Fullname can not be empty';
    } else if (value.trim().length < 3) {
      return 'Fullname can not be less than 3 characters';
    }

    return null;
  }

  String? validateName(String? value) {
    if (value!.trim().isEmpty) {
      return 'Name can not be empty';
    } else if (value.trim().length < 2) {
      return 'Name can not be less than 2 characters';
    }

    return null;
  }
  String? validateUsername(String? value) {
    if (value!.trim().isEmpty) {
      return 'Username can not be empty';
    } else if (value.trim().length < 2) {
      return 'Username can not be less than 2 characters';
    }

    return null;
  }

  String? validateSearchController (String? value){
    if (value!.trim().isEmpty) return 'please enter a valid username';

    return null;
  }

  String? validateOTP(String? value) {
    if (value!.trim().isEmpty) return 'OTP can not be empty';
    return null;
  }

  String? validateEmail(String? value) {
    if (value!.trim().isEmpty) {
      return "Email can not be empty";
    } else if (RegExp(
        r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
        .hasMatch(value) == false) {
      return 'Email not valid';
    }
    return null;
  }


}