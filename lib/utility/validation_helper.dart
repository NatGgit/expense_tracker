class ValidationHelper {
  static String? amountValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field can\'t be empty';
    }
    if (value.contains(RegExp('[^0-9.]'))) {
      return 'Insert numbers only';
    }
    return null;
  }

  static String? noEmptyValues(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field can\'t be empty';
    }
    return null;
  }
}
