import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.titel,
    this.color,
    this.fSize,
    this.fWeight,
  });
  final String titel;
  final Color? color;
  final double? fSize;
  final FontWeight? fWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: TextStyle(
        fontSize: fSize ?? 12,
        fontWeight: fWeight?? FontWeight.normal,
        color: color?? Colors.grey.shade200,
      ),
    );
  }
}