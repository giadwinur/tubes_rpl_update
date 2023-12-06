// ignore: file_names
import 'package:validators/validators.dart' as validators;
import 'package:validators/sanitizers.dart' as sanitizers;

class Validate {
  Validate._();

  // static get sanitizers => sanitizers;

  static String? clean(String str) {
    return sanitizers.trim(str);
  }

  static String? isChecked(bool value) {
    if (!value) {
      return 'You must check the checkbox';
    }
    return null;
  }

  static String? isNotEmpty(String? str) {
    if (str == null || str == '') {
      return 'this field is required';
    }
    return null;
  }

  static String? minChars(String? str) {
    const min = 6;
    if (str != null && str.length < min) {
      return 'min $min characters';
    }
    return null;
  }

  static String? maxChars(String? str) {
    const max = 6;
    if (str != null && str.length > max) {
      return 'max $max characters';
    }
    return null;
  }

  static String? isEmail(String? str) {
    if (str != null && !validators.isEmail(str)) {
      return 'email format not valid';
    }
    return null;
  }

  static String? isNumeric(String? str) {
    if (str != null && !validators.isNumeric(str)) {
      return "only allow number format";
    }
    return null;
  }

  static String? isAlpha(String? str) {
    if (str != null && !validators.isAlpha(str)) {
      return 'only allow [a-z][A-Z]';
    }
    return null;
  }

  static String? isAlphaSpace(String? str) {
    if (str != null && !RegExp(r'^[a-zA-Z ]+$').hasMatch(str)) {
      return "only allow [a-z][A-Z][space]";
    }
    return null;
  }

  static String? alphaNumeric(String? str) {
    if (str != null && !RegExp(r'^[a-zA-Z0-9]+$').hasMatch(str)) {
      return "only allow [a-z][A-Z][0-9]";
    }
    return null;
  }

  static String? alphaNumericSpace(String? str) {
    if (str != null && !RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(str)) {
      return "only allow [a-z][A-Z][0-9][space]";
    }
    return null;
  }

  static String? spaceNotAllowed(String? str) {
    if (str != null && !RegExp(r'^\S+$').hasMatch(str)) {
      return "[space] is not allowed";
    }
    return null;
  }

  static String? fullName(String? str) {
    if (str != null && !RegExp(r"^[a-zA-Z \,\.\']*$").hasMatch(str)) {
      return "only allow [a-z][A-Z][,.']";
    }
    return null;
  }

  static String? description(String? str) {
    if (str != null && !RegExp(r"^[a-zA-Z0-9 \n\,\.\'\!\?]*$").hasMatch(str)) {
      return "only allow [a-z][A-Z][0-9][,.'!?][space][enter]";
    }
    return null;
  }

  static String? pwdContain(String? str) {
    if (str != null) {
      if (!RegExp(r"^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$").hasMatch(str)) {
        return "must contain number and letter";
      }
    }
    return null;
  }

  // static String? pwdEquals(String? str1) {
  //   final str2 = x1RegisData.st.rxPwdA.value;
  //   if (str1 != str2) {
  //     return "not equals";
  //   }
  //   return null;
  // }

  static String? regExp(String? str, RegExp regExp) {
    if (str != null && !regExp.hasMatch(str)) {
      return "some character is not allowed";
    }
    return null;
  }
}
