import 'package:formulario/utils/regex.dart';

typedef ValidatorFn = String Function(String);

String Function(dynamic) isNotNull(String message) {
  return (value) {
    if (value == null) return message;
    return null;
  };
}

ValidatorFn isRequired(String message) {
  return (String value) {
    if (value == null || value.isEmpty) return message;
    return null;
  };
}

ValidatorFn isEmail(String message) {
  return (String value) {
    if (!AppRegex.email.hasMatch(value)) {
      return message;
    }
    return null;
  };
}

ValidatorFn maxLength(String message, int maxLength) {
  return (String value) {
    if (value.length > maxLength) return message;
    return null;
  };
}

String composeValidators(String value, List<ValidatorFn> validators) {
  for (final _validator in validators) {
    final _validationMessage = _validator(value);
    if (_validationMessage != null) {
      return _validationMessage;
    }
  }
  return null;
}
