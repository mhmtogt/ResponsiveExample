import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double w(double val) => MediaQuery.of(this).size.width * val;
  double h(double val) => MediaQuery.of(this).size.width * val;

  ThemeData get theme => Theme.of(this);
}

extension NumberExtension on BuildContext {
  double get lowValue => h(0.01);
  double get mediunValue => h(0.01);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingAllLow => EdgeInsets.all(lowValue);
}

extension EmptyWidget on BuildContext {
  Widget get emptyWidgetHeight => SizedBox(
        height: lowValue,
      );
}

// bunun ile yapmış olduğunuz sizler her emulator de kendine göre şekkillenir 
// ona göre alan harcar  bunu projelerinizde rahat bir şekilde kullanabilrisiniz