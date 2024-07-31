
import 'package:intl/intl.dart';

class HumanFormats {

  static String number(double number) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
      locale: 'en_US'
    ).format(number);

    return formattedNumber;
  }

  static String oneDecimal(double number) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 1,
      symbol: '',
      locale: 'en_US',
    ).format(number);

    return formattedNumber;
  }

}