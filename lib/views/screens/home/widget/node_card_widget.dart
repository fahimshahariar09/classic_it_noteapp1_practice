import 'package:flutter/material.dart';
import 'package:noteapp/views/common_widgets/custom_text_widget.dart';

class NodeCardWidget extends StatelessWidget {
  const NodeCardWidget({
    super.key,
    required this.description,
    required this.titel,
    this.color,
  });
  final String description;
  final String titel;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.green,
      child: SizedBox(
        height: 100,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                titel: titel,
                fSize: 18,
              ),
              CustomText(titel: description,fSize: 18,color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}