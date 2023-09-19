import 'package:barcode/barcode.dart';

class PaymentFunctions {
  String createBarcode() {
    final bar = Barcode.qrCode();
    final svg = bar.toSvg("https://github.com/neel1121", width: 300, height: 100);
    return svg;
  }
}