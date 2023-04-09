import 'package:flutter/cupertino.dart';

extension Sized on double {
  Widget box() {
    return SizedBox(
      height: this,
    );
  }
}

box(double d) {
  return SizedBox(
    height: d,
  );
}
