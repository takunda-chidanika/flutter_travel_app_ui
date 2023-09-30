import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class BarItemScreen extends StatelessWidget {
  const BarItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AppLargeText(
          text: "Bar Item Screen",
        ),
      ),
      
    );
  }
}