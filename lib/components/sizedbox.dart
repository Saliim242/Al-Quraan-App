import 'package:flutter/cupertino.dart';

class SizedBoxes extends StatelessWidget {
  const SizedBoxes({Key? key, this.h, this.w}) : super(key: key);

  final double? h;
  final double? w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
